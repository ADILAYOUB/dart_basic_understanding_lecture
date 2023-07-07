// ignore: slash_for_doc_comments
/**
50 DSA questions using only if else:

1. Write an if else statement to check if a number is even or odd.
2. number is positive or negative.
3. number is divisible by 3.
4. number is prime.
5. string is a palindrome.
6. string contains a certain substring.
7. string is uppercase or lowercase.
8. character is a vowel or consonant.
9. number is in a given range.
10. list contains a certain value.
11. matrix is symmetric.
12. graph is connected.
13. tree is balanced.
14. binary search tree is valid.
15. linked list is a palindrome.
16. stack is empty.
17. queue is empty.
18. priority queue is empty.
19. hash table is empty.
20. heap is empty.
21. graph is bipartite.
22. graph is planar.
23. graph is Hamiltonian.
24. graph is Eulerian.
25. graph is connected.
26. graph is acyclic.
27. graph is bipartite.
28. graph is planar.
29. graph is Hamiltonian.
30. graph is Eulerian.
31. string is a substring of another string.
32. string is a prefix of another string.
33. string is a suffix of another string.
34. string is a palindrome.
35. string is a concatenation of two other strings.
36. string is a rotation of another string.
37. string is a permutation of another string.
38. string is a anagram of another string.
39. string is a palindrome.
40. string is a rotation of another string.
41. string is a permutation of another string.
42. string is an anagram of another string.
43. number is in a given range.
44. list contains a certain value.
45. matrix is symmetric.
46. graph is connected.
47. tree is balanced.
48. binary search tree is valid.
49. linked list is a palindrome.
50. stack is empty.
Other related questions could be asked.
 */

import 'dart:io';

void main() {
  // remove comment to check the function result
  // printNumberProperties();
  // printPalindromeCheck();
  // printContainsSubstring();
  // printContainsSubstringIndex();
  // printSubstringIndex();
  // isUpperOrLower();
  // isInRange();
  listContaines();
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

//! string is uppercase or lowercase.
void isUpperOrLower() {
  stdout.write('Enter Word: ');
  String word = stdin.readLineSync()!;
  //checkCase(word);
  checkVowelorConsonant(word);
}

void checkCase(String str) {
  if (str == str.toUpperCase()) {
    print("The string is uppercase.");
  } else if (str == str.toLowerCase()) {
    print("The string is lowercase.");
  } else {
    print("The string contains a mix of uppercase and lowercase characters.");
  }
}

//! check if a character is a vowel or consonant.
void checkVowelorConsonant(String str) {
  // eid => consonent
  // Aei => vovel
  if (str.isNotEmpty) {
    String firstChar = str.toLowerCase().substring(0, 1);
    if (firstChar == 'a' ||
        firstChar == 'e' ||
        firstChar == 'i' ||
        firstChar == 'o' ||
        firstChar == 'u') {
      print('$str is a vowel.');
    } else {
      print('$str is a consonant.');
    }
  } else {
    print('Empty string provided.');
  }
}

//! checks if a number is within a given range using only if-else statements
void isInRange() {
  int number1 = 5;
  int number2 = 10;
  int number3 = 15;
  int min = 0;
  int max = 10;

  checkNumberRange(
      number1, min, max); // Output: 5 is within the range of 0 and 10.
  checkNumberRange(
      number2, min, max); // Output: 10 is within the range of 0 and 10.
  checkNumberRange(number3, min, max);
}

void checkNumberRange(int number, int min, int max) {
  if (number >= min && number <= max) {
    print('$number is within the range of $min and $max.');
  } else {
    print('$number is not within the range of $min and $max.');
  }
}

//! list contains a certain value

void listContaines() {
  final List<int> given = [121, 123, 122, 124, 125];
  print('The given List of Integers are: $given');

  print('You have entered 121');
  bool isWhat = given.contains(123);
  print(isWhat);
}
