#include <iostream>
#include <algorithm>

using namespace std;

long long a[1000000];

long long Pow(long long n, long long a) {
    long long res = 1;
    for (int i = 1; i <= a; i++) {
        res *= n;
    }
    return res;
}

int BinarySearch(long long a[], int left, int right, long long value) {
    int low = left;
    int high = right;

    while (low <= high) {
        int mid = (low + high) / 2;

        if (a[mid] == value) {
            return mid;
        }
        else if (a[mid] < value) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }

    return -1;
}

int main () {
    ios_base::sync_with_stdio(false);
    cin.tie(nullptr); cout.tie(nullptr);

    freopen("hello.inp", "r", stdin);
    freopen("hello.out", "w", stdout);

    int size = 1, n, x;

    for (int i = 0; i <= 29; i++) {
        long long pow2 = Pow(2, i); // Calculate 2^i

        for (int j = 0; j <= 18; j++) {
            long long pow3 = Pow(3, j); // Calculate 3^j
            long long temp = pow2 * pow3; // Calculate the product of 2^i and 3^j

            if (temp > 1000000000) {
                break;
            }

            for (int k = 0; k <= 12; k++) {
                long long pow5 = Pow(5, k); // Calculate 5^k
                long long hammingNumber = temp * pow5; // Final Hamming number

                if (hammingNumber > 1000000000) {
                    break;
                }

                a[size++] = hammingNumber; // Store the Hamming number
            }
        }
    }
    cout << size << "\n";
    sort(a + 1, a + size);

    cin >> n;

    while (n--) {
        cin >> x;
        int result = BinarySearch(a, 1, size - 1, x);
        cout << result << "\n";
    }

    return 0;
}
