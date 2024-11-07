#include <iostream>

using namespace std;

bool isPrime(int64_t num) {
    if (num == 2 || num == 3) {
        return true;
    }

    if (num < 2 || num % 2 == 0 || num % 3 == 0) {
        return false;
    }

    for (int64_t i = 5; i * i <= num; i += 6) {
        if (num % i == 0 || num % (i + 2) == 0) {
            return false;
        }
    }

    return true;
}

int main() {
    int64_t n, a;

    cin >> n;

    while (n--) {
        cin >> a;
        if (isPrime(a) == true) {
            cout << "YES\n";
        } else {
            cout << "NO\n";
        }
    }

    return 0;
}
