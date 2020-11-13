#include "huffman.h"
#include "assert.h"
const unsigned int RADIX = 16;
const unsigned int BITS_PER_LOOP = 4; // should be log2(RADIX)
typedef ap_uint<BITS_PER_LOOP> Digit;

void sort(
    /* input */ Symbol in[INPUT_SYMBOL_SIZE],
    /* input */ int num_symbols,
    /* output */ Symbol out[INPUT_SYMBOL_SIZE]) {

    assert(num_symbols >= 0);
    assert(num_symbols <= INPUT_SYMBOL_SIZE);

    Symbol previous_sorting[INPUT_SYMBOL_SIZE], sorting[INPUT_SYMBOL_SIZE];
    ap_uint<SYMBOL_BITS> digit_histogram[RADIX], digit_location[RADIX];
    #pragma HLS ARRAY_PARTITION variable=digit_location complete dim=1
    #pragma HLS ARRAY_PARTITION variable=digit_histogram complete dim=1
    Digit current_digit[INPUT_SYMBOL_SIZE];

    
    copy_in_to_sorting:
    for(int j = 0; j < num_symbols; j++) {
        #pragma HLS PIPELINE II=1
        sorting[j] = in[j];
    }

    radix_sort:
    for(int shift = 0; shift < 32; shift += BITS_PER_LOOP) {
        init_histogram:
        for(int i = 0; i < RADIX; i++) {
            #pragma HLS pipeline II=1
            digit_histogram[i] = 0;
        }

        Digit digit_last = 0;
        ap_uint<SYMBOL_BITS> symbol_bits_temp = 0;

        compute_histogram:
        for(int j = 0; j < num_symbols; j++) {
            #pragma HLS PIPELINE II=1

            Digit digit = (sorting[j].frequency >> shift) & (RADIX - 1); // Extrract a digit
            current_digit[j] = digit;  // Store the current digit for each symbol
            previous_sorting[j] = sorting[j]; // Save the current sorted order of symbols

            // digit_histogram[digit]++;
            ap_uint<SYMBOL_BITS> histogram_curr = digit == digit_last ? symbol_bits_temp : digit_histogram[digit];
            digit_histogram[digit_last] = symbol_bits_temp;
            symbol_bits_temp = histogram_curr + 1;
            digit_last = digit;
        }
        digit_histogram[digit_last] = symbol_bits_temp;

        digit_location[0] = 0;

        find_digit_location:
        for(int i = 1; i < RADIX; i++){
            #pragma HLS PIPELINE II=1
            digit_location[i] = digit_location[i-1] + digit_histogram[i-1];
        }

        digit_last = RADIX-1;
        symbol_bits_temp = digit_location[RADIX-1];

        re_sort:
        for(int j = 0; j < num_symbols; j++) {
            #pragma HLS PIPELINE II=1
            Digit digit = current_digit[j];
            ap_uint<SYMBOL_BITS> location_curr = digit_last == digit ? symbol_bits_temp : digit_location[digit];

            sorting[location_curr] = previous_sorting[j]; // Move symbol to new sorted location
            out[location_curr] = previous_sorting[j]; // Also copy to output

            // digit_location[digit]++; // Update digit_location
            digit_location[digit_last] = symbol_bits_temp;
            symbol_bits_temp = location_curr + 1;
            digit_last = digit;
        }
        digit_location[digit_last] = symbol_bits_temp;
    }
}
