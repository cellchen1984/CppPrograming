#include <iostream>
#include <string>

using namespace std;

struct STest
{
	char c1;
	int a1;
	char c2;
};

int main()
{
	cout << "char:" << sizeof(char) << endl;
	cout << "short:" << sizeof(short) << endl;
	cout << "int:" << sizeof(int) << endl;
	cout << "long:" << sizeof(long) << endl;
	cout << "float:" << sizeof(float) << endl;
	cout << "double:" << sizeof(double) << endl;
	cout << "string:" << sizeof(string) << endl;
	cout << "string Hello:" << sizeof(string("Hello")) << endl;
	cout << "STest:" << sizeof(STest) << endl;
	cout << "void*:" << sizeof(void*) << endl;
	cout << "int*:" << sizeof(int*) << endl;
	return 0;
}