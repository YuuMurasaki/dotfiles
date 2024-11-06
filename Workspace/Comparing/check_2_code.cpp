#include <bits/stdc++.h>
#define ll long long
using namespace std;

///////////////////////////////////////////////////////////////////
mt19937 rd(chrono::steady_clock::now().time_since_epoch().count());
long long Rand(long long l, long long h)
{
    return l + ((long long)rand() * (RAND_MAX + 1) * (RAND_MAX + 1) * (RAND_MAX + 1) +
                (long long)rand() * (RAND_MAX + 1) * (RAND_MAX + 1) +
                (long long)rand() * (RAND_MAX + 1) +
                rand()) % (h - l + 1);
}
//////////////////////////////////////////////////////////////////
void MakeTest() //sinh test
{
    ofstream cout("test.inp");
    ll n, a, b, s, x, y, z, i, j, l = 0, r = 0, q;
    string ss[6] = {"a", "b", "c", "d", "e", "f"};
    n = Rand(10, 1e2);
    cout << n << "\n";
    for (i = 1; i <= n; i++)
        cout << Rand(1, 1e4) << " ";
}
///////////////////////////////////////////////////////////////////
int main()
{
    for (int iTest = 1; iTest <= 100000; iTest++)
    {
        MakeTest();
        
        // Run the programs
        system("./code_trau");      // Run the first program (no .exe on Linux)
        system("./code_toi_uu");    // Run the second program (no .exe on Linux)

        // Compare the output files using 'diff' on Linux
        if (system("diff test.out test.ans") != 0)  // diff returns non-zero if files are different
        {
            cout << "Test " << iTest << ": WRONG!\n";
            return 0;
        }
        cout << "Test " << iTest << ": CORRECT!\n";
    }
}
