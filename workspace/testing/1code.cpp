#include <cmath>
#include <cstdint>
#include <iostream>
#include <vector>

std::string Solve() {
    int32_t n;
    std::cin >> n;

    std::vector<int32_t> a(n + 1);

    for (int32_t i = 1; i <= n; i++) {
        std::cin >> a[i];
    }

    for (int32_t i = 2; i <= n; i++) {
        if (std::abs(a[i] - a[i - 1]) != 5 && std::abs(a[i] - a[i - 1]) != 7) {
            return "NO\n";
        }
    }

    return "YES\n";
}

int main() {
    std::ios::sync_with_stdio(false);
    std::cin.tie(nullptr);
    std::cout.tie(nullptr);

    int32_t tests;
    std::cin >> tests;

    while (tests--) {
        std::cout << Solve();
    }

    return 0;
}
