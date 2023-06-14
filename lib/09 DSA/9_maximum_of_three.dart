void main() {
  maximum(1200, 30, 123);
}

void maximum(int a, int b, int c) {
  if (a > b && a > c) {
    print('$a is Greater Number Out the Three');
  } else if (b > a && b > c) {
    print('$b is Greater Number Out the Three');
  } else {
    print('$c is Greater Number Out the Three');
  }
}
