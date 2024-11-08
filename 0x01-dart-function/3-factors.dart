// Recursive function to compute the factorial of a positive integer
int fact(int f) {
if (f <= 0) {
    return (1);
}
    return (f * fact(f - 1));
}