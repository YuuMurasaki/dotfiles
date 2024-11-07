//COPYRIGHT [2024] <Yuu Murasaki>
#include <iostream>

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

int main () {
    freopen("test.inp", "r", stdin);
    freopen("test.out", "w", stdout);

    int32_t n;
    std::cin >> n;

    if (isPrime(n) == true) {
        std::cout << "YES";
    } else {
        std::cout << "NO";
    }

    return 0;
}
