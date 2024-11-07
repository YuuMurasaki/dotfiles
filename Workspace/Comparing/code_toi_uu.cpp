// COPYRIGHT [2024] <Yuu Murasaki>
#include <iostream>

int main() {

    freopen("test.inp", "r", stdin);
    freopen("test.ans", "w", stdout);

    int32_t n;

    std::cin >> n;

    for (int32_t i = 2; i < n; i++) {
        if (n % i == 0) {
            std::cout << "NO";
            return 0;
        }
    }

    std::cout << "YES";

    return 0;
}
