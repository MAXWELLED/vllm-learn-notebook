#include <iostream>
#include <iomanip>
#include <climits>

using namespace std;
int main() {
    float sum = 0.0;
    for (int i = 0; i < 10; i += 1) {
        sum += 0.1;
    }

    cout << setprecision(20);
    cout << "repeat 10 times of addtional 0.1 = " << sum << "\n";

    if (sum == 1.0) {
        cout << "相等\n";
    } else {
        cout << "差值: " << (sum - 1.0) << "\n";
    }

    double sum2 = 0.0;
    {
        int i = 0;
        while (i < 10)
        {
            sum2 += 0.1;
            i++;
        }
    }
    cout << "repeat 10 times of addtional 0.1 = " << sum2 << "\n";

    if (sum2 == 1.0) {
        cout << "相等\n";
    } else {
        cout << "差值: " << (sum2 - 1.0) << "\n";
    }

    {
        bool flag = true;
        char c = 'A';
        short s = 1;
        int i = 3;
        double d = 0.14159;

        auto sum3 = i + d;
        cout << "i + d = " << sum3  << "\n";
        cout << "c + s = " << (c + s) << "\n";
        int a = static_cast<int>(c);
        cout << "a = " << a << "\n";
    }

    {
        // 场景一：void* 和类型指针之间的转换
        int value = 100;
        void* pv = &value;
        int* pi = reinterpret_cast<int*>(pv);
        cout << *pi << endl;  // 100

        // 场景二：查看浮点数的底层位模式
        float f = 2.5f; //32位 0 10000000 0100000 00000000 00000000
        uint32_t bits = reinterpret_cast<uint32_t&>(f);
        // 2.5f 的 IEEE 754 表示：0x40200000
        cout << hex << bits << endl;


    }
    {
        // 1. 隐式转换：double -> int
        double price = 9.99;
        int rounded = price;
        cout << dec << "[隐式转换] 9.99 -> int: " << rounded << endl;// 9

        // 2. static_cast：显式转换
        int count = 7;
        double avg = static_cast<double>(count) / 2;
        cout << "[static_cast] 7 / 2 = " << avg << endl; //3.5

        // 3. 整数除法陷阱
        int wrong = count / 2;
        cout << "[整数除法] 7 / 2 = " << wrong << endl;//3

        // 4. 有符号与无符号
        int neg = -1;
        unsigned int pos = static_cast<unsigned int>(neg);
        unsigned int pos2 = reinterpret_cast<unsigned int&>(neg);
        cout << "[有符号] -1 -> " << neg << endl;
        cout << "[有符号转无符号] -1 -> " << pos << endl;//2147483649
        cout << "[有符号转无符号] -1 -> " << pos2 << endl;//4294967295

        // 5. 浮点精度
        double x = 0.1 + 0.2;
        double y = 0.3;
        cout << "[浮点比较] (0.1+0.2) == 0.3: "
                << (x == y ? "true" : "false") << endl;

        // 6. 安全的浮点比较
        double epsilon = 1e-9;
        bool safe_eq = abs(x - y) < epsilon;
        cout << "[安全比较] approx equal: "
                << (safe_eq ? "true" : "false") << endl;

        // 7. 溢出
        int big = INT_MAX;
        cout << "[溢出] INT_MAX = " << big
                << ", +1 = " << big + 1 << endl;
    }

    {
        float celsius = 0.0f;
        cout << "请输入摄氏度：";
        cin >> celsius;
        // 公式：F = C * 9 / 5 + 32
        float fahrenheit = celsius * 9 / 5 + 32;
        cout << celsius << " C = " << fahrenheit << " F" << endl;
    }
    return 0;
}
