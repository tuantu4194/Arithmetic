
#include <string>
#include <fstream>
#include <iostream>
#include <algorithm>
#include <bitset>
#include <cmath>
#define _low_edge 0
#define _high_edge 65535
#define EOF_symbol '-'
#define symbol_break '\0'
using namespace std;

class arithmetic
{
private:
	/* Definition of half, quarter and 3/4 */
	const int first_qtr = _high_edge / 4 + 1;
	const int half = 2 * first_qtr;
	const int third_qtr = 3 * first_qtr;
	/* Basic objects for working with text  */
	string text;
	string abc;
	string encode;
	string decode;
	/* Frequency array  */
	int* freq;
protected:
	/* Debug information output mode  */
	static bool debug_mode;
public:
	/* Show frequency and symbol table  */
	void show_table();
	/* Return encoded string  */
	string get_encode();
	/* Return decode string */
	string get_decode();
	/* Revert the original text  */
	string get_text();
	/* Put text from file into string text */
	void get_file(string filename);
	/* Put text from input string into string text  */
	void input_string(string input);
	/* Enter input text from keyboard  */
	void input_keyboard();
	/* Create alphabet  */
	void get_abc();
	/* Create an array of frequencies  */
	void get_frequency();
	/* Getting the index of the next character  */
	void get_next_symbol(int i, int* current);
	/* write bits */
	string write_bits(bool bit, int bits_to_foll);
	/* Output the received text to a file  */
	void output_file(string filename);
	/* Text encoding method  */
	void encode_text();
	/* Converting 16 bits of a string to int  */
	int to_int(int _pos);
	/* Converting int to bits  */
	string to_bits_16(int _value);
	/* Method of adding a bit to an int number  */
	int add_bit(int value, int count_taken, bool& flag);
	/* Text decoding method  */
	void decode_text();
};
