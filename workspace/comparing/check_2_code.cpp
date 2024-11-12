#include <bits/stdc++.h>
using namespace std;

mt19937 rd(chrono::steady_clock::now().time_since_epoch().count());
long long Rand(long long l, long long h)
{
    return l + ((long long)rand() * (RAND_MAX + 1) * (RAND_MAX + 1) * (RAND_MAX + 1) +
                (long long)rand() * (RAND_MAX + 1) * (RAND_MAX + 1) +
                (long long)rand() * (RAND_MAX + 1) +
                rand()) % (h - l + 1);
}

void MakeTest()
{
    ofstream output("test.inp");
    long long n;
    n = Rand(10, 100);
    output << n << "\n";
    for (int32_t i = 1; i <= n; i++) {
        output << Rand(1, 10000) << " ";
    }
}

int main()
{
    for (int iTest = 1; iTest <= 100000; iTest++)
    {
        MakeTest();
        
        system("./code_trau");
        system("./code_toi_uu");

        if (system("diff test.out test.ans") != 0)
        {
            cout << "Test " << iTest << ": WRONG!\n";
            return 0;
        }
        cout << "Test " << iTest << ": CORRECT!\n";
    }
}
