#include <stdio.h>

int gcd (int m, int n) {
    if (m == 0)
        return n;
    else if (m <= n)
        return gcd(m, n - m);
    else
        return gcd(n, m - n);
}

int main (void)
{
    return gcd(10, 35);
}

