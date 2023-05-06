//!  switch case to control your program’s flow. A Switch case is used to
//!  execute the code block based on the condition.

/***
     switch(expression) {
    case value1:
        // statements
        break;
    case value2:
        // statements
        break;
    case value3:
        // statements
        break;
    default:
       // default statements
    }

    switch-case statement work in dart

    1. The expression is evaluated once and compared with each case value.
    2. If expression matches with case value1, the statements of case value1 are executed.
    3. If not same will happen to reset of the condition (cases) until match
    4. break keywords tell dart to exit the switch statement
    5. If there is no match, default statements are executed.

    //! We can use a Switch case as an alternative to the if-else-if condition.
 */

/// example 1 using with if else
usignIfElse() {
  var dayOfWeek = 5;
  if (dayOfWeek == 1) {
    print("Day is Sunday.");
  } else if (dayOfWeek == 2) {
    print("Day is Monday.");
  } else if (dayOfWeek == 3) {
    print("Day is Tuesday.");
  } else if (dayOfWeek == 4) {
    print("Day is Wednesday.");
  } else if (dayOfWeek == 5) {
    print("Day is Thursday.");
  } else if (dayOfWeek == 6) {
    print("Day is Friday.");
  } else if (dayOfWeek == 7) {
    print("Day is Saturday.");
  } else {
    print("Invalid Weekday.");
  }
}

/// Example 2 using Switch Statement
switchStatement() {
  var dayOfWeek = 5;
  switch (dayOfWeek) {
    case 1:
      print("Day is Sunday.");
      break;
    case 2:
      print("Day is Monday.");
      break;
    case 3:
      print("Day is Tuesday.");
      break;
    case 4:
      print("Day is Wednesday.");
      break;
    case 5:
      print("Day is Thursday.");
      break;
    case 6:
      print("Day is Friday.");
      break;
    case 7:
      print("Day is Saturday.");
      break;
    default:
      print("Invalid Weekday.");
      break;
  }
}

// The syntax of switch statements is cleaner and much easier to read and write.
//! Switch Case On Strings
stringSwitch() {
  const weather = "cloudy";

  switch (weather) {
    case "sunny":
      print("Its a sunny day. Put sunscreen.");
      break;
    case "snowy":
      print("Get your skis.");
      break;
    case "cloudy":
    case "rainy":
      print("Please bring umbrella.");
      break;
    default:
      print("Sorry I am not familiar with such weather.");
      break;
  }
}

//! Switch Case On Enum
// An enum or enumeration is used for defining value according to you.
// You can define your own type with a finite number of options.

/**
      enum enum_name { 
      constant_value1, 
      constant_value2, 
      constant_value3 
      }
 */

///Example 5

// define enum outside main function
enum Weather { sunny, snowy, cloudy, rainy }

// main method
void swithWithEnum() {
  const weather = Weather.cloudy;

  switch (weather) {
    case Weather.sunny:
      print("Its a sunny day. Put sunscreen.");
      break;
    case Weather.snowy:
      print("Get your skis.");
      break;
    case Weather.rainy:
    case Weather.cloudy:
      print("Please bring umbrella.");
      break;
    default:
      print("Sorry I am not familiar with such weather.");
      break;
  }
}
