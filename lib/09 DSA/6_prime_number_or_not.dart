// prime numbers are those which are divided by 1 and itself

void main() {
  bool prime = isPrime(11);
  print(prime);
}

bool isPrime(int number) {
  // starting from 2 and checking up to the given number and inc..
  //  if the modulus is zero that is divided by any number of i the return fase
  // other wise return true as it is divided by itself
  for (int i = 2; i < number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
