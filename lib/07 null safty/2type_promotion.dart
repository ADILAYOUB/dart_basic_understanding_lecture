//? TYPE PROMOTION IN DART

// Type promotion in dart means that dart automatically converts a value of one
// type to another type. Dart does this when it knows that the value is of a specific type.

// How Type Promotion Works?

// Promoting from general types to specific subtypes.
// Promoting from nullable types to non-nullable types.
// Example 1: Promoting From General Types To Specific Subtypes
import 'dart:math';

void main() {
  Object name = "Pratik";
// print(name.length) will not work because Dart doesn't know that name is a String
  if (name is String) {
// name promoted from Object to String
    print("The length of name is ${name.length}");
  }
//Example 2
// result is a String
  String result;
// result is promoted to a non-nullable type String
  if (DateTime.now().hour < 12) {
    result = "Good Morning";
  } else {
    result = "Good Afternoon";
  }
// display the result
  print("Result is $result");
  print("Length of result is ${result.length}");
// ex 3
  printLength("Hello");
  //ex 4
  DataProvider().myMethod();
}
// Example 2: Type Promotion In Dart

// Example 3: Type Promotion With Nullable To Non-Nullable Type

//  you can also throw an exception if the variable is null. In this example,
// method printLength, takes a String type parameter. If the parameter is null,
//then it will throw an exception.  method to print the length of the text
void printLength(String? text) {
  if (text == null) {
    throw Exception("The text is null");
  }
  print("Length of text is ${text.length}");
}

// Example 4: Type Promotion With Nullable Type To Non-Nullable
// importing dart:math library
// creating a class DataProvider
class DataProvider {
  // creating a method stringorNull
  String? get stringorNull => Random().nextBool() ? "Hello" : null;

  // creating a method myMethod
  void myMethod() {
    String? value = stringorNull;
    // checking if value String or not
    if (value is String) {
      print("The length of value is ${value.length}");
    } else {
      print("The value is not string.");
    }
  }
}
