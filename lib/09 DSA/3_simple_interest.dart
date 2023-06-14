//! simple interest formula SimpleInterest = Principle * rate * time / 100

void main() {
  int result = findSimpleInterest(1000, 3, 5);
  print("The simple interest is: $result");
}

int findSimpleInterest(int principle, int rate, int time) {
  double si = (principle * rate * time) / 100;
  return si.toInt();
}
