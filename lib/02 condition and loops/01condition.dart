//! Conditions In Dart
// With conditions, you can control the flow of the dart program.
//! Types Of Condition

//following conditions to control the flow of your program.

//? If Condition
//? If-Else Condition
//? If-Else-If Condition
//? Switch case

//! If Condition
// allows to execture the code inside the {} when specific condition is meet
//Sytax
/**
 *      if(condition) {
           Statement 1;
           Statement 2;
           .
           .
           Statement n;
} */
///? Example One
condition() {
  int age = 10;
  if (age == 10) {
    String result = "You are not eligibel";
    return result;
  }
}

//! If-Else Condition

// If 'IF'condition is true, then the body of the if-condition is executed.
// Otherwise, the body of the else-condition is executed.
/**
     if(condition){
     statements;
      }else{
       statements;
      } 
*/

///? Example 2
ifelse() {
  int age = 28;
  if (age >= 30) {
    print("There are very ");
  } else {
    print("you are inside else");
  }
}

//? Condition Based On Boolean Value
//? Example 3
condBool() {
  bool isMarried = false;
  if (isMarried) {
  } else {
    print("this is else");
  }
}
//! If-Else-If Condition
// multiple if conditions, then you can use if-else-if.
/**
    if(condition1){
      statements1;
      }else if(condition2){
      statements2;
      }else if(condition3){
      statements3;
      }
      .
      .
      .
      else(conditionN){
      statementsN;
      }
 */

///? Example 4
ifelseif() {
  int noOfMonth = 5;

  // Check the no of month
  if (noOfMonth == 1) {
    print("The month is jan");
  } else if (noOfMonth == 2) {
    print("The month is feb");
  } else if (noOfMonth == 3) {
    print("The month is march");
  } else if (noOfMonth == 4) {
    print("The month is april");
  } else if (noOfMonth == 5) {
    print("The month is may");
  } else if (noOfMonth == 6) {
    print("The month is june");
  } else if (noOfMonth == 7) {
    print("The month is july");
  } else if (noOfMonth == 8) {
    print("The month is aug");
  } else if (noOfMonth == 9) {
    print("The month is sep");
  } else if (noOfMonth == 10) {
    print("The month is oct");
  } else if (noOfMonth == 11) {
    print("The month is nov");
  } else if (noOfMonth == 12) {
    print("The month is dec");
  } else {
    print("Invalid option given.");
  }
}

//! Find Greatest Number Among 3 Numbers
//? Example 5
findGreatet() {
  int number1 = 4100;
  int number2 = 2200;
  int number3 = 300;
  if (number1 > number2 && number1 > number3) {
    print("Number 1 is greater than Number 2 i.e $number1");
  }
  if (number2 > number1 && number2 > number3) {
    print("Number 2 is greater than Number 2 i.e $number2");
  }
  if (number3 > number1 && number3 > number1) {
    print("Number 3 is greater than Number 3 i.e $number2");
  }
}


//! Switch case
