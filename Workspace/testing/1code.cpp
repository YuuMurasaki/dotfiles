#include <algorithm>
#include <iostream>

using namespace std;

const int32_t N = 1e5 + 1;
int32_t a[N], b[N];

int32_t findClosest(int32_t arr[], int32_t n, int32_t target) {
    int32_t ans = arr[0];
    int32_t start = 0, end = n - 1;

    while (start <= end) {
        int32_t mid = (start + end) / 2;

        // Updating our ans variable to more better solution by checking if the current
        // index value is more closest to the target or not
        if (abs(arr[mid] - target) < abs(ans - target)) {
            ans = arr[mid];
        } else if (abs(arr[mid] - target) == abs(ans - target)) {
            ans = max(ans, arr[mid]);
        }

        if (arr[mid] == target) {
            return arr[mid];
        } else if (arr[mid] < target) {
            start = mid + 1;
        } else {
            end = mid - 1;
        }
    }

    return ans;
}

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    cout.tie(nullptr);

    int32_t n, res = 1000000000;
    cin >> n;

    for (int32_t i = 0; i < n; i++) {
        cin >> a[i];
    }

    for (int32_t i = 0; i < n; i++) {
        cin >> b[i];
    }

    sort(b, b + n);

    for (int32_t i = 0; i < n; i++) {
        res = min(res, abs(a[i] + findClosest(b, n, -a[i])));
    }

    cout << res;

    return 0;
}
