#include "huffman.h"
#include "assert.h"
void huffman_encoding(
    /* input */ SymbolStream *symbol_histogram,
    /* output */ PackedCodewordAndLengthStream *encoding,
    /* output */ int *num_nonzero_symbols) {
    #pragma HLS INTERFACE axis register both port=symbol_histogram 
    #pragma HLS INTERFACE axis register both port=encoding 
    #pragma HLS INTERFACE s_axilite port=num_nonzero_symbols 
    #pragma HLS INTERFACE s_axilite port=return 

    #pragma HLS DATAFLOW

    Symbol filtered[INPUT_SYMBOL_SIZE];
    Symbol sorted[INPUT_SYMBOL_SIZE];
    Symbol sorted_copy1[INPUT_SYMBOL_SIZE];
    Symbol sorted_copy2[INPUT_SYMBOL_SIZE];
    ap_uint<SYMBOL_BITS> parent[INPUT_SYMBOL_SIZE-1];
    ap_uint<SYMBOL_BITS> left[INPUT_SYMBOL_SIZE-1];
    ap_uint<SYMBOL_BITS> right[INPUT_SYMBOL_SIZE-1];
    int n;

    Symbol_axiu stream_buffer[INPUT_SYMBOL_SIZE];
    read_stream:
    for(int i = 0; i < INPUT_SYMBOL_SIZE; ++i){
        #pragma HLS PIPELINE II=1
        stream_buffer[i] = symbol_histogram->read();
    }
    filter(stream_buffer, filtered, &n);
    sort(filtered, n, sorted);

    ap_uint<SYMBOL_BITS> length_histogram[TREE_DEPTH];
    ap_uint<SYMBOL_BITS> truncated_length_histogram1[TREE_DEPTH];
    ap_uint<SYMBOL_BITS> truncated_length_histogram2[TREE_DEPTH];
    CodewordLength symbol_bits[INPUT_SYMBOL_SIZE];

    int previous_frequency = -1;

    copy_sorted:
    for(int i = 0; i < n; i++) {
        sorted_copy1[i].value = sorted[i].value;
        sorted_copy1[i].frequency = sorted[i].frequency;
        sorted_copy2[i].value = sorted[i].value;
        sorted_copy2[i].frequency = sorted[i].frequency;
        // std::cout << sorted[i].value << " " << sorted[i].frequency << "\n";
        assert(previous_frequency <= (int)sorted[i].frequency);
        previous_frequency = sorted[i].frequency;
    }

    create_tree(sorted_copy1, n, parent, left, right);
    compute_bit_length(parent, left, right, n, length_histogram);

#ifndef __SYNTHESIS__
    // Check the result of computing the tree histogram
    int codewords_in_tree = 0;
    
    merge_bit_length:
    for(int i = 0; i < TREE_DEPTH; i++) {
        #pragma HLS PIPELINE II=1
        if(length_histogram[i] > 0)
            std::cout << length_histogram[i] << " codewords with length " << i << "\n";
        codewords_in_tree += length_histogram[i];
    }

    // std::cout << "codewords_in_tree = " << codewords_in_tree << ", n = " << n << "\n";
    assert(codewords_in_tree == n);
#endif

    truncate_tree(length_histogram, truncated_length_histogram1, truncated_length_histogram2);
    canonize_tree(sorted_copy2, n, truncated_length_histogram1, symbol_bits);
    create_codeword(symbol_bits, truncated_length_histogram2, stream_buffer, encoding);

    *num_nonzero_symbols = n;
}
