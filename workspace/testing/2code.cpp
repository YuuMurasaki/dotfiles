#include <algorithm>
#include <iostream>

using namespace std;

int64_t a[1000001];

int main() {
    freopen("hello.inp", "r", stdin);
    freopen("hello.out", "w", stdout);

    int64_t n, cnt = 0;
    cin >> n;

    for (int64_t i = 1; i <= n; i++) {
        cin >> a[i];
    }

    sort(a + 1, a + n + 1);

    for (int k = 2; k <= n; ++k) {
        int i = 0, j = k - 1;

        while (i < j) {
            if (a[i] + a[j] > a[k]) {
                cnt += (j - i);
                --j;
            } else {
                ++i;
            }
        }
    }

    cout << cnt;

    return 0;
}
