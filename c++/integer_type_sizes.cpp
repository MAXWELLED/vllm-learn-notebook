// integer-type-sizes.cpp
// 打印 C++ 基本整数类型在当前平台上的大小
#include <iomanip>
#include <iostream>
#include <limits>

int main()
{   std::ios::sync_with_stdio(false);
    std::cin.tie(nullptr);
    std::cout << "=== 基本类型 sizeof 汇总 ===" << "\n";
    std::cout << "bool:          " << sizeof(bool) << " 字节" << "\n";
    std::cout << "char:          " << sizeof(char) << " 字节" << "\n";
    std::cout << "short:         " << sizeof(short) << " 字节" << "\n";
    std::cout << "int:           " << sizeof(int) << " 字节" << "\n";
    std::cout << "long:          " << sizeof(long) << " 字节" << "\n";
    std::cout << "long long:     " << sizeof(long long) << " 字节" << "\n";
    std::cout << "float:         " << sizeof(float) << " 字节" << "\n";
    std::cout << "double:        " << sizeof(double) << " 字节" << "\n";
    std::cout << "long double:   " << sizeof(long double) << " 字节" << " 最大值：" << std::numeric_limits<long double>::max() << " 最小值：" << std::numeric_limits<long double>::min() << "\n";    
    std::cout << "\n";  
    std::cout << "=== 整数类型大小（字节） ===" << "\n";
    std::cout << "short:          " << sizeof(short) << "\n";
    std::cout << "int:            " << sizeof(int) << "\n";
    std::cout << "long:           " << sizeof(long) << "\n";
    std::cout << "long long:      " << sizeof(long long) << "\n";
    std::cout << "\n";

    std::cout << "=== 对应的无符号版本 ===" << "\n";
    std::cout << "unsigned short: " << sizeof(unsigned short) << "\n";
    std::cout << "unsigned int:   " << sizeof(unsigned int) << "\n";
    std::cout << "unsigned long:  " << sizeof(unsigned long) << "\n";
    std::cout << "unsigned long long: " << sizeof(unsigned long long)
              << "\n";
    
    std::cout << "=== 固定宽度类型大小（字节） ===" << "\n";
    std::cout << "int8_t:   " << sizeof(int8_t) << "\n";
    std::cout << "int16_t:  " << sizeof(int16_t) << "\n";
    std::cout << "int32_t:  " << sizeof(int32_t) << "\n";
    std::cout << "int64_t:  " << sizeof(int64_t) << "\n";
    std::cout << "\n";
    std::cout << "uint8_t:  " << sizeof(uint8_t) << "\n";
    std::cout << "uint16_t: " << sizeof(uint16_t) << "\n";
    std::cout << "uint32_t: " << sizeof(uint32_t) << "\n";
    std::cout << "uint64_t: " << sizeof(uint64_t) << "\n";

    std::cout << "=== int32_t 的范围 ===" << "\n";
    std::cout << "最小值: " << std::numeric_limits<int32_t>::min()
              << "\n";
    std::cout << "最大值: " << std::numeric_limits<int32_t>::max()
              << "\n";
    std::cout << "\n";

    std::cout << "=== uint32_t 的范围 ===" << "\n";
    std::cout << "最小值: " << std::numeric_limits<uint32_t>::min()
              << "\n";
    std::cout << "最大值: " << std::numeric_limits<uint32_t>::max()
              << "\n";

    double a = 0.1;
    double b = 0.2;
    double c = a + b;

    // 用高精度输出，看清楚浮点数的真面目
    std::cout << std::setprecision(20);
    std::cout << "0.1  = " << a << "\n";
    std::cout << "0.2  = " << b << "\n";
    std::cout << "a + b = " << c << "\n";
    std::cout << "0.3  = " << 0.3 << "\n";
    std::cout << "\n";

    // 比较结果
    if (c == 0.3) {
        std::cout << "a + b == 0.3 (相等)" << "\n";
    }
    else {
        std::cout << "a + b != 0.3 (不相等!)" << "\n";
        std::cout << "差值: " << (c - 0.3) << "\n";
    }

    char d = 'A';
    signed char sc = -1;
    unsigned char uc = 255;

    std::cout << "char 'A' 的整数值: " << static_cast<int>(d) << "\n";
    std::cout << "signed char -1 的整数值: " << static_cast<int>(sc)
              << "\n";
    std::cout << "unsigned char 255 的整数值: " << static_cast<int>(uc)
              << "\n";

    bool flag = true;
    int count = flag + flag + flag;

    std::cout << "true + true + true = " << count << "\n";
    std::cout << "sizeof(bool) = " << sizeof(bool) << "\n";
    return 0;
}