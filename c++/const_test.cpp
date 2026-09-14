// const_demo.cpp —— 演示 const 变量、指针、引用和 constexpr 的各种用法

#include <iostream>

/// @brief constexpr 函数：计算平方
/// @param x 被平方的值
/// @return x 的平方
constexpr int square(int x)
{
    return x * x;
}

/// @brief 值传递——函数内部修改不影响外部
void add_one_by_value(int n)
{
    n = n + 1;    // 只修改了局部的拷贝
}

/// @brief 引用传递——函数内部直接修改外部变量
void add_one_by_ref(int& n)
{
    n = n + 1;    // 修改了原始变量
}

void print_values()
{
    int a = 10;
    add_one_by_value(a);
    std::cout << a << "\n";   // 输出 10，没变

    add_one_by_ref(a);
    std::cout << a << "\n";   // 输出 11，变了

}
int main()
{
    // --- const 变量 ---
    const int kMaxSize = 100;
    // kMaxSize = 200;  // 取消注释会编译错误
    std::cout << "kMaxSize = " << kMaxSize << "\n";

    // --- constexpr ---
    constexpr int kArraySize = square(5);  // 编译期计算，结果为 25
    std::cout << "kArraySize = " << kArraySize << "\n";

    // --- 指向常量的指针 ---
    int a = 10;
    int b = 20;
    const int* p_to_const = &a;
    // *p_to_const = 100;  // 取消注释会编译错误
    p_to_const = &b;       // 没问题，指针可以改指向
    std::cout << "*p_to_const = " << *p_to_const << "\n";
    std::cout << "p_to_const = " << p_to_const << "\n";

    // --- 常量指针 ---
    int* const const_p = &a;
    *const_p = 100;        // 没问题，可以改数据
    // const_p = &b;       // 取消注释会编译错误
    std::cout << "*const_p = " << *const_p << "\n";

    // --- 两个都 const ---
    const int* const double_const = &a;
    // *double_const = 1;  // 编译错误
    // double_const = &b;  // 编译错误
    std::cout << "*double_const = " << *double_const << "\n";

    // --- const 引用 ---
    int x = 42;
    const int& ref = x;
    // ref = 100;           // 编译错误
    x = 100;               // 直接改 x 是可以的
    std::cout << "ref = " << ref << "\n";  // 输出 100
    print_values();
    
    return 0;
}