#include <iostream>

/// @brief 用 if-else 链判断成绩等级
/// @param score 百分制分数 (0-100)
/// @return 等级字符
char grade_by_if(int score)
{
    if (score >= 90) {
        return 'A';
    } else if (score >= 80) {
        return 'B';
    } else if (score >= 70) {
        return 'C';
    } else if (score >= 60) {
        return 'D';
    } else {
        return 'F';
    }
}

/// @brief 用 switch 判断成绩等级
/// @param score 百分制分数 (0-100)
/// @return 等级字符
char grade_by_switch(int score)
{
    switch (score / 10) {
        case 10:
        case 9:
            return 'A';
        case 8:
            return 'B';
        case 7:
            return 'C';
        case 6:
            return 'D';
        default:
            return 'F';
    }
}

int test_grade()
{
    int score = 0;
    std::cout << "请输入成绩 (0-100): ";
    std::cin >> score;

    if (score < 0 || score > 100) {
        std::cout << "无效的成绩输入" << std::endl;
        return 1;
    }

    char grade = grade_by_if(score);
    std::cout << "if-else 判定结果: " << grade << std::endl;

    grade = grade_by_switch(score);
    std::cout << "switch 判定结果:  " << grade << std::endl;

    std::cout << "是否及格: "
              << (score >= 60 ? "是" : "否") << std::endl;

    if (int diff = score - 60; diff >= 0) {
        std::cout << "超过及格线 " << diff << " 分" << std::endl;
    } else {
        std::cout << "距离及格还差 " << -diff << " 分" << std::endl;
    } 
    return 0;
}

float simple_computer()
{
    std::cout << "请输入两个浮点数算式: ";
    float a, b;
    char op;
    std::cin >> a >> op >> b;
    switch (op) {
        case '+':
            return a + b;
        case '-':
            return a - b;
        case '*':
            return a * b;
        case '/':
            if (b == 0) {
                std::cout << "除数不能为零" << std::endl;
                return false;
            }
            return a / b;
        default:
            std::cout << "无效的操作符" << std::endl;
            return 0;
    }
}
int main()
{   
    int a = 10, b = 5;
    std::cout << "a++ = " << a++ << "\n" << "++b = " << ++b << std::endl;
    std::cout << "a = " << a << "\n";
    test_grade();
    float res = simple_computer();
    std::cout << "计算结果为：" << res << std::endl;

    return 0;
}