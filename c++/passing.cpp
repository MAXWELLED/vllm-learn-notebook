// passing.cpp —— 演示值传递、引用传递和 const 引用传递

#include <iostream>
#include <string>
#include <chrono>

/// @brief 交换两个整数的值
void swap_values(int& a, int& b)
{
    int temp = a;
    a = b;
    b = temp;
}

void swap_values(double& a, double& b);
void swap_values(std::string& a, std::string& b);

struct BigData {
    int payload[4096];  // 16 KB
};

/// @brief 值传递版本：每次调用拷贝整个 BigData
long sum_by_value(BigData data)
{
    long total = 0;
    for (int i = 0; i < 4096; ++i) {
        total += data.payload[i];
    }
    return total;
}

/// @brief const 引用版本：零拷贝
long sum_by_const_ref(const BigData& data)
{
    long total = 0;
    for (int i = 0; i < 4096; ++i) {
        total += data.payload[i];
    }
    return total;
}

/// @brief 拼接问候语，const 引用避免字符串拷贝
std::string build_greeting(const std::string& name)
{
    return "Hello, " + name + "! Welcome to Modern C++.";
}

void example()
{
    // swap 演示
    int a = 10;
    int b = 20;
    std::cout << "交换前: a = " << a << ", b = " << b << std::endl;
    swap_values(a, b);
    std::cout << "交换后: a = " << a << ", b = " << b << std::endl;

    // 性能对比
    BigData data{};
    for (int i = 0; i < 4096; ++i) {
        data.payload[i] = i;
    }

    constexpr int kIterations = 100000;

    auto start = std::chrono::high_resolution_clock::now();
    long result_value = 0;
    for (int i = 0; i < kIterations; ++i) {
        result_value = sum_by_value(data);
    }
    auto end = std::chrono::high_resolution_clock::now();
    auto ms_value = std::chrono::duration_cast<std::chrono::milliseconds>(
                        end - start)
                        .count();

    start = std::chrono::high_resolution_clock::now();
    long result_ref = 0;
    for (int i = 0; i < kIterations; ++i) {
        result_ref = sum_by_const_ref(data);
    }
    end = std::chrono::high_resolution_clock::now();
    auto ms_ref = std::chrono::duration_cast<std::chrono::milliseconds>(
                      end - start)
                      .count();

    std::cout << "\n--- 性能对比 (" << kIterations << " 次调用) ---"
              << std::endl;
    std::cout << "值传递: " << result_value
              << ", 耗时: " << ms_value << " ms" << std::endl;
    std::cout << "const引用: " << result_ref
              << ", 耗时: " << ms_ref << " ms" << std::endl;

    // 字符串处理
    std::string name = "Charlie";
    std::cout << build_greeting(name) << std::endl;
    std::cout << build_greeting(std::string("World")) << std::endl;

}

const std::string get_prefix()
{
    std::string prefix = "user_";
    return prefix;
}

struct Measurement
{
    double value[4096];
};

void cumpute_average_value(Measurement data)
{
    double average = 0.0;
    int length = sizeof(data.value) / sizeof(data.value[0]);
    for (auto m : data.value)
    {
        average += m;
    }
    average /= length;
}

void cumpute_average_ref(const Measurement& data)
{
    double average = 0.0;
    int length = sizeof(data.value) / sizeof(data.value[0]);
    for (auto m : data.value)
    {
        average += m;
    }
    average /= length;
}

template<typename F>
void benchmark_time_used(F&& func, const Measurement& data)
{
    func(data);
    auto start = std::chrono::steady_clock::now();
    for (int i = 0; i < 100000; ++i)
    {
        func(data);
    }
    auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now() - start).count();
    std::cout << "Time used: " << ms << " ms\n";
}

int main()
{
    // example();
    // std::string name = get_prefix() + "admin";
    // std::cout << name << std::endl;
    // double a = 1.0;
    // double b = 2.0;
    // swap_values(a, b);
    // std::cout << a << " " << b << std::endl;
    // std::string str1 = "Hello";
    // std::string str2 = "World";
    // swap_values(str1, str2);
    // std::cout << str1 << " " << str2 << std::endl;
    Measurement data;
    for (int i = 0; i < 4096; ++i) {
        data.value[i] = i;
    }
    benchmark_time_used(cumpute_average_value, data); 
    benchmark_time_used(cumpute_average_ref, data); 

    return 0;
}

void swap_values(double& a, double& b)
{
    double temp = a;
    a = b;
    b = temp;
}

void swap_values(std::string& a, std::string& b)
{
    std::string temp = a;
    a = b;
    b = temp;
}