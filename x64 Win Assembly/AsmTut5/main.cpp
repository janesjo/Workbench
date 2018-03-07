#include <iostream>

using namespace std;

extern "C" int someFunction();

int main() {
	cout << "The asm result is: " << someFunction() << endl;
	return 0;
}