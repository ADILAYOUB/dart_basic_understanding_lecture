//! Ternary Operator
// The ternary operator is like if-else statement.
// This is a one-liner replacement for the if-else statement.
// It is used to write a conditional expression,
// where based on the result of a boolean condition,
// one of the two values is selected.

//? Syntax:
//! condition ? exprIfTrue : exprIfFalse
// The ternary operator takes a condition and returns one of two values,
// depending upon the condition’s boolean value, i.e., true or false.

ter() {
  int num1 = 10;
  int num2 = 15;
  int max = 0;
  if (num1 > num2) {
    max = num1;
  } else {
    max = num2;
  }
  print("The greatest number is $max");
}

// Example 2 using ternary operator
ternary() {
  int num1 = 10;
  int num2 = 15;
  int max = (num1 > num2) ? num1 : num2;
  print("The greatest number is $max");
}

valueBase() {
  var selection = 2;
  var output = (selection == 2) ? 'Apple' : 'Banana';
  print(output);
}
