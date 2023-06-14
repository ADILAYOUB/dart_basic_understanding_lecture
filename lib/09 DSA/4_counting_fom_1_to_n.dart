//! print count from 1 to n

void main() {
  // count(10);
  countReverse(10);
}

void count(int number) {
  // using for loop to iterate from 1 to the numbers and count
  for (int i = 1; i <= number; i++) {
    print(i);
  }
}

// reverse print

void countReverse(int number) {
  for (int i = number; i >= 1; i--) {
    print(i);
  }
}
