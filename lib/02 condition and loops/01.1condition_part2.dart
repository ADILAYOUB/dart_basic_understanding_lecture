// In Dart, you can use the conditional operator ? :
// and the null-aware conditional operator ?? for conditional operations.
// These operators allow you to write concise code that handles different
// conditions and values. Let's explore their usage with examples.

//? Conditional Operator ? ::
// The conditional operator ? : (also known as the ternary operator) evaluates
// a condition and returns one of two expressions based on the result.
//! Syntax
//* condition ? expression1 : expression2

//If the condition is true, expression1 is evaluated and returned.
// Otherwise, expression2 is evaluated and returned.

// Example 1:
void exampleOne() {
  int x = 5;
  String result = x > 0 ? 'Positive' : 'Negative';
  print(result);
}
// Output: Positive
// In this example, if the value of x is greater than 0, the condition x > 0
// evaluates to true, and the expression 'Positive' is assigned to the result
// variable. Otherwise, if the condition is false, the expression 'Negative'
// is assigned to the result variable.

//? Null-aware Conditional Operator ??:
// The null-aware conditional operator ?? allows you to provide a default
// value when a variable or expression is null.
//! Syntx
//* value1 ?? value2
// If value1 is not null, it is returned. Otherwise, value2 is returned.

// Example 2:
void exampleTwo() {
  String? name;
  String displayName = name ?? 'Anonymous';
  print(displayName); // Output: Anonymous
}
// In this example, the variable name is null.
// When using the null-aware conditional operator ??, if name is null,
// the expression 'Anonymous' is assigned to the displayName variable.
// Otherwise, if name is not null, its value is assigned to displayName.

//? Chaining Conditional Operators:

// You can also chain conditional operators for more complex conditions.
// Example 3:
void exampleThree() {
  int x = 10;
  String result = x > 0 ? 'Positive' : (x < 0 ? 'Negative' : 'Zero');
  print(result); // Output: Positive
}
// In this example, if the value of x is greater than 0, the condition x > 0
// evaluates to true, and 'Positive' is assigned to the result variable.
// If the condition is false, it evaluates the second condition x < 0.
// If this condition is true, 'Negative' is assigned to result.
// If both conditions are false, it falls back to the default value 'Zero'.

// The conditional operator ? : and the null-aware conditional operator ?? are
// powerful tools to handle different conditions and provide fallback values
// when needed. They help write concise and readable code, especially when
// dealing with simple conditional expressions and handling null values.
