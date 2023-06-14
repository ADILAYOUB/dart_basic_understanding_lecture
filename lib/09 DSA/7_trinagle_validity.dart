// formula of validity of the triangle
// the sum of two side should be greater that the size of the third side

void main() {
  bool triangle = isTriangle(10, 1, 1);
  print(triangle);
}

bool isTriangle(int a, int b, int c) {
  if (a + b > c && c + a > b && b + c > a) {
    return true;
  }
  return false;
}
