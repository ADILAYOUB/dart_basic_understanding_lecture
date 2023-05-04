//! Datatype help you to categorize all the different types of
//  data you use in your code

//? Dart supports the following built-in data types :
/***
 * 
 *1 Numbers => int bool num => resp number 
 *2 Strings => String => resp sequence of characters
 *3 Booleans => bool => true or false
 *4 Lists => list => order of group items 
 *5 Maps => map => resp set of values as a key value pair 
 *6 Sets => set => unordered list of unique value of same type 
 *7 Runes => runes => resp unicode of a string 
 *8 Null => null => resp null value 
 */

///? Number example 1
num number() {
  int number = 10;
  double number2 = 20;
  num number3 = 30;
  num number4 = 40;
  num sum = number + number2 + number3 + number4;
  return sum;
}

//? Round Double Value To 2 Decimal Place
//? example 2
String doubleNum() {
  double price = 1155.56783480934;
  return price.toStringAsFixed(2);
}

//? String

//String helps you to store text data. both double and single quotes are used
//? example 3
address() {
  String name = 'Sameer';
  String lastName = "Ahamad";
  return print('$name is my first name and $lastName is my last name');
}

//Create A Multi-Line String In Dart
//? Example 4
multiLine() {
  // Multi Line Using Single Quotes
  String multiLineText = '''
This is Multi Line Text
with 3 single quote
I am also writing here.
''';

// Multi Line Using Double Quotes
  String otherMultiLineText = """
This is Multi Line Text
with 3 double quote
I am also writing here.
""";
  return multiLineText + otherMultiLineText;
}

//? Special Character In String
// /n for new line /t tab
//? Example 05
String tab() {
  String where = "i am from \nUS";
  String correctWhere = "I am from \tIndia";
  return where + correctWhere;
}

//? Creating a Raw String
// Exaple 06
rawString() {
  num prize = 1000;
  String rawString = "The value of prize is \t $prize"; // regular String
  String withString = r"The value of prize is \t $prize"; // raw String

  return print(
      "Without Raw: $rawString With Raw: $withString"); // with raw result
}

//? Type Conversion In Dart

// ype conversion allows you to convert one data type to another type
// For e.g. to convert String to int, int to String or String to bool, etc.

//? Exampe 07 Converting String to int
stringToInt() {
  String value = "1";
  print('This is the String Value: $value');
  int val = 100;
  print(" This is the int value $val");
  //to convert string value to int
  int result = int.parse(value);
  return result;
}

//! Convert String To Double In Dart
//  convert String to double using double.parse() method.
//? Example 08
stringToDouble() {
  String strvalue = "10.121";
  print("Type of strvalue is ${strvalue.runtimeType}");
  double doublevalue = double.parse(strvalue);
  print("Value of doublevalue is $doublevalue");
// this will print data type
  return print("Type of doublevalue is ${doublevalue.runtimeType}");
}

//! Convert Int To String
//convert int to String using the toString() method
//? Example 09
intToString() {
  int one = 111;
  print("This is int $one");
  String std = "This is String ";
  print(std);
  String intString = one.toString();
  print('Int to String $intString');
  print('Int to String ${intString.runtimeType}');
}

//! Convert Double To Int In Dart
// convert double to int using the toInt() method.
//? Example 10
doubleToInt() {
  double num1 = 120.021;
  int num2 = num1.toInt(); // converting double to int
  print("The value of num1 is $num1. Its type is ${num1.runtimeType}");
  print("The value of num2 is $num2. Its type is ${num2.runtimeType}");
}

//! Booleans
// In Dart, boolean holds either true or false value.
// You can write the bool keyword to define the boolean data type.
// You can use boolean if the answer is true or false.
// Consider the answer to the following questions:

// Are you married?
// Is the door open?
// Does a cat fly?
// Is the traffic light green?
// Are you older than your father?

//? example 11
boolean() {
  bool isMarried = true;
  print("Married Status: $isMarried");
}

//? List
// list holds multiple values in a single variable
// want to store multiple values without creating multiple variables.=> use list
//? Example 12
listLesson() {
  List<String> name = [
    "Adil",
    "Sameer",
    "Davood",
    "Aqib",
    "Rayees",
    "Asif",
    "Babar"
  ];
  print("This is the List $name");
  print("At [0] place is ${name[0]}");
  print("At [1] place is ${name[1]}");
  print("At [2] place is ${name[2]}");
  print("At [3] place is ${name[3]}");
  print("At [4] place is ${name[4]}");
  print("At [5] place is ${name[5]}");
  print("At [6] place is ${name[6]}");
  int length = name.length;
  print("The length of the list is $length");
  //Note list index start from the 0
}

//? Sets
// unordered collection of //!unique items is called set in dart.
// You can store unique data in sets.
//? Example 13
sets() {
  Set<String> uniqueSet = {
    "Ahmad",
    "Bashir",
    "Rashid",
    "Ghani",
    "Abdul",
    "Khalil"
  };

  Set<String> weeks = {"Sun", "Mon", "Tue", "Wed", "Fri", "Sat"};

  print(uniqueSet);
  print(weeks);
}

//? Map
// it is an object where data can be stored in key-value pairs.
// Each key occures only once but value can be used mutiple times.
//? Example 14
maps() {
  Map<String, String> map = {
    "name": "Sameer Ahamd",
    "address": "KhanPur Kharar Mohali",
    "education": "Masters in Computer Science",
  };
  print(map);
  print(map["name"]);
}

//? Var
// var automatically finds a data type.
//? Example 15
varchar() {
  var name = "Burhan "; // String
  var age = 20; // int

  print(name);
  print(age);
  print(name.runtimeType);
  print(age.runtimeType);
}

//? Find unicode by using Runes.
//? Example 16
unicode() {
  String name = "a";
  print(name.runes);
}
