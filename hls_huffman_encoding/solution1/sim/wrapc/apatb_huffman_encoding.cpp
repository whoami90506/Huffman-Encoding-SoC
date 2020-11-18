// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    typedef struct Symbol {
        ap_uint<9> value;
        ap_uint<32> frequency;
       } Symbol;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "symbol_histogram_value_V"
#define AUTOTB_TVIN_symbol_histogram_value_V  "../tv/cdatafile/c.huffman_encoding.autotvin_symbol_histogram_value_V.dat"
// wrapc file define: "symbol_histogram_frequency_V"
#define AUTOTB_TVIN_symbol_histogram_frequency_V  "../tv/cdatafile/c.huffman_encoding.autotvin_symbol_histogram_frequency_V.dat"
// wrapc file define: "encoding_V"
#define AUTOTB_TVOUT_encoding_V  "../tv/cdatafile/c.huffman_encoding.autotvout_encoding_V.dat"
#define AUTOTB_TVIN_encoding_V  "../tv/cdatafile/c.huffman_encoding.autotvin_encoding_V.dat"
// wrapc file define: "num_nonzero_symbols"
#define AUTOTB_TVOUT_num_nonzero_symbols  "../tv/cdatafile/c.huffman_encoding.autotvout_num_nonzero_symbols.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "encoding_V"
#define AUTOTB_TVOUT_PC_encoding_V  "../tv/rtldatafile/rtl.huffman_encoding.autotvout_encoding_V.dat"
// tvout file define: "num_nonzero_symbols"
#define AUTOTB_TVOUT_PC_num_nonzero_symbols  "../tv/rtldatafile/rtl.huffman_encoding.autotvout_num_nonzero_symbols.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			symbol_histogram_value_V_depth = 0;
			symbol_histogram_frequency_V_depth = 0;
			encoding_V_depth = 0;
			num_nonzero_symbols_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{symbol_histogram_value_V " << symbol_histogram_value_V_depth << "}\n";
			total_list << "{symbol_histogram_frequency_V " << symbol_histogram_frequency_V_depth << "}\n";
			total_list << "{encoding_V " << encoding_V_depth << "}\n";
			total_list << "{num_nonzero_symbols " << num_nonzero_symbols_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int symbol_histogram_value_V_depth;
		int symbol_histogram_frequency_V_depth;
		int encoding_V_depth;
		int num_nonzero_symbols_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void huffman_encoding (
Symbol symbol_histogram[256],
ap_uint<32> encoding[256],
int* num_nonzero_symbols);

void AESL_WRAP_huffman_encoding (
Symbol symbol_histogram[256],
ap_uint<32> encoding[256],
int* num_nonzero_symbols)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "encoding_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_encoding_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_encoding_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_encoding_V, AESL_token); // data

			sc_bv<32> *encoding_V_pc_buffer = new sc_bv<32>[256];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'encoding_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'encoding_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					encoding_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_encoding_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_encoding_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: encoding_V
				{
					// bitslice(31, 0)
					// {
						// celement: encoding.V(31, 0)
						// {
							sc_lv<32>* encoding_V_lv0_0_255_1 = new sc_lv<32>[256];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: encoding.V(31, 0)
						{
							// carray: (0) => (255) @ (1)
							for (int i_0 = 0; i_0 <= 255; i_0 += 1)
							{
								if (&(encoding[0]) != NULL) // check the null address if the c port is array or others
								{
									encoding_V_lv0_0_255_1[hls_map_index].range(31, 0) = sc_bv<32>(encoding_V_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: encoding.V(31, 0)
						{
							// carray: (0) => (255) @ (1)
							for (int i_0 = 0; i_0 <= 255; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : encoding[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : encoding[0]
								// output_left_conversion : encoding[i_0]
								// output_type_conversion : (encoding_V_lv0_0_255_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(encoding[0]) != NULL) // check the null address if the c port is array or others
								{
									encoding[i_0] = (encoding_V_lv0_0_255_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] encoding_V_pc_buffer;
		}

		// output port post check: "num_nonzero_symbols"
		aesl_fh.read(AUTOTB_TVOUT_PC_num_nonzero_symbols, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_num_nonzero_symbols, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_num_nonzero_symbols, AESL_token); // data

			sc_bv<32> *num_nonzero_symbols_pc_buffer = new sc_bv<32>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'num_nonzero_symbols', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'num_nonzero_symbols', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					num_nonzero_symbols_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_num_nonzero_symbols, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_num_nonzero_symbols))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: num_nonzero_symbols
				{
					// bitslice(31, 0)
					// {
						// celement: num_nonzero_symbols(31, 0)
						// {
							sc_lv<32>* num_nonzero_symbols_lv0_0_0_1 = new sc_lv<32>[1];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: num_nonzero_symbols(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(num_nonzero_symbols[0]) != NULL) // check the null address if the c port is array or others
								{
									num_nonzero_symbols_lv0_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(num_nonzero_symbols_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: num_nonzero_symbols(31, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : num_nonzero_symbols[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : num_nonzero_symbols[0]
								// output_left_conversion : num_nonzero_symbols[i_0]
								// output_type_conversion : (num_nonzero_symbols_lv0_0_0_1[hls_map_index]).to_uint64()
								if (&(num_nonzero_symbols[0]) != NULL) // check the null address if the c port is array or others
								{
									num_nonzero_symbols[i_0] = (num_nonzero_symbols_lv0_0_0_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] num_nonzero_symbols_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "symbol_histogram_value_V"
		char* tvin_symbol_histogram_value_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_symbol_histogram_value_V);

		// "symbol_histogram_frequency_V"
		char* tvin_symbol_histogram_frequency_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_symbol_histogram_frequency_V);

		// "encoding_V"
		char* tvin_encoding_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_encoding_V);
		char* tvout_encoding_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_encoding_V);

		// "num_nonzero_symbols"
		char* tvout_num_nonzero_symbols = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_num_nonzero_symbols);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_symbol_histogram_value_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_symbol_histogram_value_V, tvin_symbol_histogram_value_V);

		sc_bv<16>* symbol_histogram_value_V_tvin_wrapc_buffer = new sc_bv<16>[256];

		// RTL Name: symbol_histogram_value_V
		{
			// bitslice(8, 0)
			{
				int hls_map_index = 0;
				// celement: symbol_histogram.value.V(8, 0)
				{
					// carray: (0) => (255) @ (1)
					for (int i_0 = 0; i_0 <= 255; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : symbol_histogram[i_0].value
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : symbol_histogram[0].value
						// regulate_c_name       : symbol_histogram_value_V
						// input_type_conversion : (symbol_histogram[i_0].value).to_string(2).c_str()
						if (&(symbol_histogram[0].value) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<9> symbol_histogram_value_V_tmp_mem;
							symbol_histogram_value_V_tmp_mem = (symbol_histogram[i_0].value).to_string(2).c_str();
							symbol_histogram_value_V_tvin_wrapc_buffer[hls_map_index].range(8, 0) = symbol_histogram_value_V_tmp_mem.range(8, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvin_symbol_histogram_value_V, "%s\n", (symbol_histogram_value_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_symbol_histogram_value_V, tvin_symbol_histogram_value_V);
		}

		tcl_file.set_num(256, &tcl_file.symbol_histogram_value_V_depth);
		sprintf(tvin_symbol_histogram_value_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_symbol_histogram_value_V, tvin_symbol_histogram_value_V);

		// release memory allocation
		delete [] symbol_histogram_value_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_symbol_histogram_frequency_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_symbol_histogram_frequency_V, tvin_symbol_histogram_frequency_V);

		sc_bv<32>* symbol_histogram_frequency_V_tvin_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: symbol_histogram_frequency_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: symbol_histogram.frequency.V(31, 0)
				{
					// carray: (0) => (255) @ (1)
					for (int i_0 = 0; i_0 <= 255; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : symbol_histogram[i_0].frequency
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : symbol_histogram[0].frequency
						// regulate_c_name       : symbol_histogram_frequency_V
						// input_type_conversion : (symbol_histogram[i_0].frequency).to_string(2).c_str()
						if (&(symbol_histogram[0].frequency) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> symbol_histogram_frequency_V_tmp_mem;
							symbol_histogram_frequency_V_tmp_mem = (symbol_histogram[i_0].frequency).to_string(2).c_str();
							symbol_histogram_frequency_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = symbol_histogram_frequency_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvin_symbol_histogram_frequency_V, "%s\n", (symbol_histogram_frequency_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_symbol_histogram_frequency_V, tvin_symbol_histogram_frequency_V);
		}

		tcl_file.set_num(256, &tcl_file.symbol_histogram_frequency_V_depth);
		sprintf(tvin_symbol_histogram_frequency_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_symbol_histogram_frequency_V, tvin_symbol_histogram_frequency_V);

		// release memory allocation
		delete [] symbol_histogram_frequency_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_encoding_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_encoding_V, tvin_encoding_V);

		sc_bv<32>* encoding_V_tvin_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: encoding_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: encoding.V(31, 0)
				{
					// carray: (0) => (255) @ (1)
					for (int i_0 = 0; i_0 <= 255; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : encoding[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : encoding[0]
						// regulate_c_name       : encoding_V
						// input_type_conversion : (encoding[i_0]).to_string(2).c_str()
						if (&(encoding[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> encoding_V_tmp_mem;
							encoding_V_tmp_mem = (encoding[i_0]).to_string(2).c_str();
							encoding_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = encoding_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvin_encoding_V, "%s\n", (encoding_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_encoding_V, tvin_encoding_V);
		}

		tcl_file.set_num(256, &tcl_file.encoding_V_depth);
		sprintf(tvin_encoding_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_encoding_V, tvin_encoding_V);

		// release memory allocation
		delete [] encoding_V_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		huffman_encoding(symbol_histogram, encoding, num_nonzero_symbols);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_encoding_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_encoding_V, tvout_encoding_V);

		sc_bv<32>* encoding_V_tvout_wrapc_buffer = new sc_bv<32>[256];

		// RTL Name: encoding_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: encoding.V(31, 0)
				{
					// carray: (0) => (255) @ (1)
					for (int i_0 = 0; i_0 <= 255; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : encoding[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : encoding[0]
						// regulate_c_name       : encoding_V
						// input_type_conversion : (encoding[i_0]).to_string(2).c_str()
						if (&(encoding[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> encoding_V_tmp_mem;
							encoding_V_tmp_mem = (encoding[i_0]).to_string(2).c_str();
							encoding_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = encoding_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 256; i++)
		{
			sprintf(tvout_encoding_V, "%s\n", (encoding_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_encoding_V, tvout_encoding_V);
		}

		tcl_file.set_num(256, &tcl_file.encoding_V_depth);
		sprintf(tvout_encoding_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_encoding_V, tvout_encoding_V);

		// release memory allocation
		delete [] encoding_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_num_nonzero_symbols, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_num_nonzero_symbols, tvout_num_nonzero_symbols);

		sc_bv<32>* num_nonzero_symbols_tvout_wrapc_buffer = new sc_bv<32>[1];

		// RTL Name: num_nonzero_symbols
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: num_nonzero_symbols(31, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : num_nonzero_symbols[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : num_nonzero_symbols[0]
						// regulate_c_name       : num_nonzero_symbols
						// input_type_conversion : num_nonzero_symbols[i_0]
						if (&(num_nonzero_symbols[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> num_nonzero_symbols_tmp_mem;
							num_nonzero_symbols_tmp_mem = num_nonzero_symbols[i_0];
							num_nonzero_symbols_tvout_wrapc_buffer[hls_map_index].range(31, 0) = num_nonzero_symbols_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_num_nonzero_symbols, "%s\n", (num_nonzero_symbols_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_num_nonzero_symbols, tvout_num_nonzero_symbols);
		}

		tcl_file.set_num(1, &tcl_file.num_nonzero_symbols_depth);
		sprintf(tvout_num_nonzero_symbols, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_num_nonzero_symbols, tvout_num_nonzero_symbols);

		// release memory allocation
		delete [] num_nonzero_symbols_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "symbol_histogram_value_V"
		delete [] tvin_symbol_histogram_value_V;
		// release memory allocation: "symbol_histogram_frequency_V"
		delete [] tvin_symbol_histogram_frequency_V;
		// release memory allocation: "encoding_V"
		delete [] tvout_encoding_V;
		delete [] tvin_encoding_V;
		// release memory allocation: "num_nonzero_symbols"
		delete [] tvout_num_nonzero_symbols;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

