#include <stdio.h>

int ack(int x, int y) {
    if (x <= 0)
        return y + 1;
    if (y <= 0)
        return ack(x - 1, 1);
    return ack(x - 1, ack(x, y - 1));
}

int main (void) {
    printf("%d\n", ack(3, 10));
    return 0;
}
