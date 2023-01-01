import 'dart:io';

void main() {
  stdout.write('Enter your number: ');
  String num = stdin.readLineSync()!;
  int number = int.parse(num);

  //! Write a Dart program to check if a number is even or odd using an if-else statement.
  if (number % 2 == 0) {
    print('$number Is Even');
  } else {
    print('$number Is Odd');
  }

  //! Write a Dart program to check if a number is positive or negative using an if-else statement.
  if (number >= 0) {
    print('$number Is Positive');
  } else {
    print('$number Is Negative');
  }

  //! Write a Dart program to check if a number is divisible by 3 using an if-else statement.
  if (number % 3 == 0) {
    print('$number Is Divisible by 3');
  } else {
    print('$number Is not  Divisible by 3');
  }

  //! Write a Dart program to check if a number is prime using an if-else statement.
  if (isPrime(number)) {
    print('$number is a prime number');
  } else {
    print('$number is not a prime number');
  }

  //! Write a Dart program to check if a string is palindrome using an if-else statement.
  stdout.write('Enter a word: ');
  String word = stdin.readLineSync()!;
  if (isPalindrome(word)) {
    print('$word is a palindrome');
  } else {
    print('$word is not a palindrome');
  }
}

// prime number using only if else
bool isPrime(int number) {
  if (number < 2) {
    return false;
  } else if (number == 2) {
    return true;
  } else {
    int limit = (number / 2).ceil();
    return checkDivisors(number, limit, 2);
  }
}

bool checkDivisors(int number, int limit, int divisor) {
  if (divisor > limit) {
    return true;
  } else if (number % divisor == 0) {
    return false;
  } else {
    return checkDivisors(number, limit, divisor + 1);
  }
}

//! Write a Dart program to check if a string is palindrome using an if-else statement.

bool isPalindrome(String str) {
  // String reversedStr = '';
  // int length = str.length - 1;
  // if (length < 2) {
  //   return true;
  // } else {
  //   reversedStr = reverseString(str, length);
  // }
  // return str.toLowerCase() == reversedStr.toLowerCase();
  String reversedStr = reverseString(str, str.length - 1);
  return str.toLowerCase() == reversedStr.toLowerCase();
}

// String reverseString(String str, int index) {
//   if (index == 0) {
//     return str[0];
//   } else {
//     print(str[index] + reverseString(str, index - 1));
//     return str[index] + reverseString(str, index - 1);
//   }
// }

String reverseString(String str, int index) {
  if (index == 0) {
    return str[0];
  } else {
    String currentChar = str[index];
    String reversedSubstring = reverseString(str, index - 1);
    print(currentChar + reversedSubstring);
    return currentChar + reversedSubstring;
  }
}
