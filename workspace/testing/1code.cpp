#include <cstdint>
#include <iostream>

bool isPrime(int64_t num) {
    if (num == 2 || num == 3) {
        return true;
    }

    if (num <= 1 || num % 2 == 0 || num % 3 == 0) {
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
    for (int64_t i = 2; i <= 100; i++) {
        if (isPrime(i)) {
            std::cout << i << "\n";
        }
    }

    return 0;
}
