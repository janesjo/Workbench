// AsmTut3!!
#include <iostream>

using namespace std;

extern "C" int someFunction();

int main() {
	cout << "The result is: " << someFunction() << endl;
	return 0;
}