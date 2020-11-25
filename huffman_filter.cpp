#include "huffman.h"
// Postcondition: out[x].frequency > 0
void filter(
            /* input  */ Symbol_axiu in[INPUT_SYMBOL_SIZE],
            /* output */ Symbol out[INPUT_SYMBOL_SIZE],
            /* output */ int *n) {
    #pragma HLS INLINE off
    #pragma HLS INTERFACE ap_fifo port=in,
 
    
    ap_uint<SYMBOL_BITS> j = 0;
    
    for(int i = 0; i < INPUT_SYMBOL_SIZE; i++) {
    #pragma HLS pipeline II=1
        ap_uint<SYMBOL_BITS> value = in[i].data >> 32;
	    ap_uint<32> frequency = in[i].data;

        if(frequency != 0) {
            out[j].frequency = frequency;
            out[j].value = value;
            j++;
        }
    }
    *n = j;
}
