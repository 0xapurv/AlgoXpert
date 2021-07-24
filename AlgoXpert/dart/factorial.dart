void main() {
  var n = 5;
  var fac = factorial(n);
  print("$n! = $fac");
}
int factorial(var n) {
  var fac = 1;
  for (int i = 2; i <= n; ++i) {
    fac *= i;
  }
  return fac;
}