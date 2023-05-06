//! Math In Dart

// Math helps us to perform mathematical calculations efficiently.
// With dart math, you can generate random number,
// find square root, find power of number, or round specific numbers.
// To use math in dart, you must import 'dart:math';.

//? Generate Random Numbers
import 'dart:math';

void random() {
  Random random = Random();
  int randomNumber = random.nextInt(10); // from 0 to 9 included
  print("Generated Random Number Between 0 to 9: $randomNumber");

  int randomNumber2 = random.nextInt(10) + 1; // from 1 to 10 included
  print("Generated Random Number Between 1 to 10: $randomNumber2");
}

/// random.nextInt(10) function is used to generate a random number
/// between 0 and 9 in which the value is stored in a variable randomNumber.
/// (10)+1  is used to generate random number between 1 to 10
/// in which the value is stored in a variable randomNumber2.

//? Generate Random Number Between Any Number

void randomAnyNumber() {
  int min = 10;
  int max = 20;

  int randomnum = min + Random().nextInt((max + 1) - min);

  print("Generated Random number between $min and $max is: $randomnum");
}

void power() {
  int num1 = 10;
  int num2 = 2;

  num powernum = pow(num1, num2);
  num maxnum = max(num1, num2);
  num minnum = min(num1, num2);
  num squareroot = sqrt(25); // Square root of 25

  print("Power is $powernum");
  print("Maximum is $maxnum");
  print("Minimum is $minnum");
  print("Square root is $squareroot");
}
