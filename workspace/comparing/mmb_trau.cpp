#include <iostream>

using namespace std;

int32_t a[1000001];

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    cout.tie(nullptr);

    freopen("mmb.inp", "r", stdin);
    freopen("mmb.ans", "w", stdout);

    int32_t n, cnt = 0;
    cin >> n;

    for (int32_t i = 1; i <= n; i++)
        cin >> a[i];

    for (int32_t i = 1; i <= n; i++) {
        for (int32_t j = i + 1; j <= n; j++) {
            for (int32_t k = j + 1; k <= n; k++) {
                if (a[i] + a[j] > a[k] && a[j] + a[k] > a[i] && a[i] + a[k] > a[j]) {
                    cnt++;
                }
            }
        }
    }

    cout << cnt;

    return 0;
}
