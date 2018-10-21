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
    printf("%d\n", gcd(21600, 335700));
    return 0;
}

