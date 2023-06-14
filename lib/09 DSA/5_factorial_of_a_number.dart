// factorial of a Number

void main() {
  int sum = factorial(10);
  print("The Factorial of the Number is: $sum");
}

// n! = n * (n - 1) * (n - 2) - - -
int factorial(int number) {
  int sum = 1;
  for (int i = 1; i <= number; i++) {
    // adding the sum to the rest
    sum *= i; // sum = sum * i;
  }
  return sum;
}
