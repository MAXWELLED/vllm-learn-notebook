#include <iostream>
#include <iomanip>

using namespace std;

void print_N_squres()
{
    cout << "请输入一个整数 N: ";
    int N;
    cin >> N;
    string line = "*";
    string line_mid = "*";
    for (int i = 0; i < N-1; ++i)
    {
        line += " *";
        line_mid += (i==N-2) ? " *" : "  ";
    }
    for (int i = 0; i < N; ++i)
    {
        if (i==0 || i == N-1)
        {
            cout << line << "\n";
        }
        else
        {
            cout << line_mid << "\n";
        }
    }
}

void range_for()
{ 
    int arr[] = {3, -7, 1, -9, 4, -6};
    for (auto& i : arr)
    {
        if (i < 0)
        {
            i = abs(i); // 将负数转换为正数
        }
    }
    for (auto i : arr)
    {
        cout << i << " ";
    }
     cout << "\n";
}
int main()
{
    print_N_squres();
    range_for();
    return 0;
}