#include <iostream>
#include <iomanip>

int main() {
    int x = 5;
    int* p = &x;
    std::cout << "&x = " << &x << "\n";
    std::cout << "&'Hello' = " << &"Hello" << "\n";
    std::cout << "&*p = " << &*p << "\n";
    // std::cout << "&x++ = " << &(x++) << "\n";
    std::cout << "&++x = " << &(++x) << "\n";

}