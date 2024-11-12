#include <bits/stdc++.h>
using namespace std;

// program name
const string NAME = "mmb";
// number of test
const int NTEST = 1000;

mt19937 rd(chrono::steady_clock::now().time_since_epoch().count());
#define rand rd

long long Rand(long long l, long long h) {
    assert(l <= h);
    return l + rd() * 1LL * rd() % (h - l + 1);
}

int main()
{
    srand(time(NULL));
    for (int iTest = 1; iTest <= NTEST; iTest++)
    {
        ofstream inp((NAME + ".inp").c_str());
        // Code generation here
        int n = Rand(10, 200); inp << n << "\n";
        for (int i = 1; i <= n; i++) {
            inp << Rand(1, 1000) << " ";
        }
        // End of generating
        inp.close();

        system(("./" + NAME).c_str());
        system(("./" + NAME + "_trau").c_str());

        if (system(("diff " + NAME + ".out " + NAME + ".ans").c_str()) != 0)
        {
            cout << "Test " << iTest << ": WRONG!\n";
            return 0;
        }
        cout << "Test " << iTest << ": CORRECT!\n";
    }
    return 0;
}
