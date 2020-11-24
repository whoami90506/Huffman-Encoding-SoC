#include "huffman.h"
#include "assert.h"
#include <iostream>
void create_codeword(
  /* input */ CodewordLength symbol_bits[INPUT_SYMBOL_SIZE],
  /* input */ ap_uint<SYMBOL_BITS> codeword_length_histogram[TREE_DEPTH],
  /* output */ PackedCodewordAndLengthStream *encoding
) {
    #pragma HLS INTERFACE axis register both port=encoding 

    Codeword first_codeword[MAX_CODEWORD_LENGTH];

    // Computes the initial codeword value for a symbol with bit length i
    Codeword temp = 0;

    first_codewords:
    for(int i = 0; i < MAX_CODEWORD_LENGTH; i++) {
        #pragma HLS PIPELINE II=1

        first_codeword[i] = temp;
        temp = (temp + codeword_length_histogram[i]) << 1;
    }

    assign_codewords:
    for (int i = 0; i < INPUT_SYMBOL_SIZE; ++i) {
        #pragma HLS PIPELINE II=5
        CodewordLength length = symbol_bits[i];
        //if symbol has 0 bits, it doesn't need to be encoded

        make_codeword:
        if(length != 0) {
            //          std::cout << first_codeword[length].to_string(2) << "\n";
            Codeword out_reversed = first_codeword[length];
            out_reversed.reverse();
            out_reversed = out_reversed >> (MAX_CODEWORD_LENGTH - length);
            // std::cout << out_reversed.to_string(2) << "\n";
            PackedCodewordAndLength_axiu result;
            result.data = (out_reversed << CODEWORD_LENGTH_BITS) + length;
            if(i == INPUT_SYMBOL_SIZE -1)result.last = 1;
            encoding->write(result);
            first_codeword[length]++;
        } else {
            PackedCodewordAndLength_axiu result;
            result.data = 0;
            if(i == INPUT_SYMBOL_SIZE -1)result.last = 1;
            encoding->write(result);
      }
  }
}
