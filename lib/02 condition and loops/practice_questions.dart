import 'dart:io';

void main() {
  // remove comment to check the function result
  // printNumberProperties();
  // printPalindromeCheck();
  // printContainsSubstring();
  // printContainsSubstringIndex();
  printSubstringIndex();
}

void printNumberProperties() {
  stdout.write('Enter your number: ');
  int number = int.parse(stdin.readLineSync()!);

  checkEvenOrOdd(number);
  checkPositiveOrNegative(number);
  checkDivisibleByThree(number);
  checkPrimeNumber(number);
}

//! Write an if else statement to check if a number is even or odd.
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number Is Even');
  } else {
    print('$number Is Odd');
  }
}

//! Write an if else statement to check if a number is positive or negative.
void checkPositiveOrNegative(int number) {
  if (number >= 0) {
    print('$number Is Positive');
  } else {
    print('$number Is Negative');
  }
}

//! Write an if else statement to check if a number is divisible by 3.
void checkDivisibleByThree(int number) {
  if (number % 3 == 0) {
    print('$number Is Divisible by 3');
  } else {
    print('$number Is not Divisible by 3');
  }
}

//! Write an if else statement to check if a number is prime.
void checkPrimeNumber(int number) {
  if (isPrime(number)) {
    print('$number is a prime number');
  } else {
    print('$number is not a prime number');
  }
}

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

//! Write an if else statement to check if a string is a palindrome.
void printPalindromeCheck() {
  stdout.write('Enter a word: ');
  String word = stdin.readLineSync()!;
  if (isPalindrome(word)) {
    print('$word is a palindrome');
  } else {
    print('$word is not a palindrome');
  }
}

bool isPalindrome(String str) {
  String reversedStr = reverseString(str, str.length - 1);
  return str.toLowerCase() == reversedStr.toLowerCase();
}

String reverseString(String str, int index) {
  if (index == 0) {
    return str[0];
  } else {
    String currentChar = str[index];
    String reversedSubstring = reverseString(str, index - 1);
    return currentChar + reversedSubstring;
  }
}

//! Write an if else statement to check if a string contains a certain substring.
void printContainsSubstring() {
  stdout.write('Enter a word: ');
  String word = stdin.readLineSync()!;
  if (isContainString(word)) {
    print('$word contains star');
  } else {
    print('$word don\'t contain star');
  }
}

bool isContainString(String str) {
  String contain = 'star'.toLowerCase();
  if (str.toLowerCase().contains(contain)) {
    return true;
  } else {
    return false;
  }
}

//!  Write an if else statement to check if a string matches and at what index
void printContainsSubstringIndex() {
  stdout.write('Enter First word: ');
  String word1 = stdin.readLineSync()!;
  stdout.write('Enter Second word: ');
  String word2 = stdin.readLineSync()!;
  int index = 0;
  if (isMatchingWord(word1, word2, index)) {
    print('$word2 matches $word1 at $index Index');
  } else {
    print('$word2 don\'t contain any substring of $word1');
  }
}

bool isMatchingWord(String word1, String word2, int index) {
  if (index >= word1.length || index >= word2.length) {
    return false; // reached at the end of one or both the strings
  }
  if (word1[index] == word2[index]) {
    return true;
  }
  return isMatchingWord(
      word1, word2, index + 1); // Recursively check the next index
}

//! To find if the second word contains any substring of the first word, while also determining the common word,
void printSubstringIndex() {
  stdout.write('Enter First word: ');
  String word1 = stdin.readLineSync()!;
  stdout.write('Enter Second word: ');
  String word2 = stdin.readLineSync()!;
  int index = 0;
  if (isContainSubString(word1, word2, index)) {
    print('$word2 matches $word1 at $index Index');
  } else {
    print('$word2 don\'t contain any substring of $word1');
  }
}
// we can use recursive approach

bool isContainSubString(
  String firstWord,
  String secondWord,
  int startingIndex,
) {
  if (firstWord.isEmpty || secondWord.isEmpty) {
    return false; // No common String / substring
  }
  if (startingIndex >= firstWord.length) {
    return false; // Reached the end of firstWord without finding a match
  }

  if (secondWord.contains(firstWord[startingIndex])) {
    return true;
  }
  return isContainSubString(firstWord, secondWord, startingIndex + 1);
}
