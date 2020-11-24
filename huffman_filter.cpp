#include "huffman.h"
// Postcondition: out[x].frequency > 0
void filter(
            /* input  */ SymbolStream *in,
            /* output */ Symbol out[INPUT_SYMBOL_SIZE],
            /* output */ int *n) {
    #pragma HLS INLINE off
    #pragma HLS INTERFACE axis register both port=in,
 
    
    ap_uint<SYMBOL_BITS> j = 0;
    
    for(int i = 0; i < INPUT_SYMBOL_SIZE; i++) {
    #pragma HLS pipeline II=1
        Symbol_axiu input = in->read();
        ap_uint<SYMBOL_BITS> value = input.data >> 32;
	    ap_uint<32> frequency = input.data;

        if(frequency != 0) {
            out[j].frequency = frequency;
            out[j].value = value;
            j++;
        }
    }
    *n = j;
}
