void main() {
  evenNumber(10);
}

void evenNumber(int evenNumber) {
  // first will iterate from 1 to evenNumber
  for (int i = 1; i <= evenNumber; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}
