int fibonacci(int n) =>
    n == 1 || n == 2 ? 1 : fibonacci(n - 1) + fibonacci(n - 2);

void main() {
  fibonacci(7);
}