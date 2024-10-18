#include <iostream>

using namespace std;

long long Power(long long a, long long b, long long mod) {
    long long result = 1;
    a = a % mod;

    while (b > 0) {
        if (b & 1) {
            result = (result * a) % mod;
        }
        a = (a * a) % mod;
        b >>= 1;
    }

    return result;
}

int main () {
    
    freopen("hello.inp", "r", stdin);
    freopen("hello.out", "w", stdout);

    int n, m;

    cin >> n >> m;

    cout << Power(n, m, 1000000);

    return 0;
}
