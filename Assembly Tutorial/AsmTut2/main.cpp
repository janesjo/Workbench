// Test!!
#include <iostream>

using namespace std;

extern "C" int someFunction2();

int main() {
	cout << "The result is: " << someFunction2() << endl;
	return 0;
}