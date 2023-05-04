//! USER INPUT IN DART

// Instead of writing hard-coded values, you can give input to the computer.
// It will make your program more dynamic.
// You must import the package import 'dart:io'; for user input.

// You won’t be able to take input from users using dartpad.
// You need to run a program from your computer.

//! String User Input
// They are used for storing textual user input.
// If you want to keep values like somebody’s
// name, address, description, etc., you can take string input
// from the user.

import 'dart:io';

// Example 1
stringInput() {
  print("Enter name:");
  String? name = stdin.readLineSync();
  return name!;
}

//! Integer User Input
// You can take integer input to get a numeric value from the user
// without the decimal point. E.g. 10, 100, -800 etc.
//? Example 2
intInput() {
  print("Enter number:");
  int? number = int.parse(stdin.readLineSync()!);
  return number;
}

//! Floating Point User Input
// You can use float input if you want to get a numeric value
// from the user with the decimal point. E.g. 10.5, 100.5, -800.9 etc.
//? Exaple 3
folatingInput() {
  print("Enter a floating number:");
  double number = double.parse(stdin.readLineSync()!);
  return number;
}
