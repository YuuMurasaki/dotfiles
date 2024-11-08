#include <iostream>

using namespace std;

int main() {
    freopen("hello.inp", "r", stdin);
    freopen("hello.out", "w", stdout);

    int32_t n, a, sum = 0;
    cin >> n;

    while (n--) {
        cin >> a;
        sum += a;
    }

    cout << sum;

    return 0;
}
