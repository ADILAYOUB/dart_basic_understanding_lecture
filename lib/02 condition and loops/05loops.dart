//! Dart Loops
// In Programming, loops are used to repeat a block of code
// until certain conditions are not completed.

//? different types of loop in Dart. They are:
/*
    For Loop
    For Each Loop
    While Loop
    Do While Loop
*/

//printing name 10 times without loop

withOutLoop() {
  print("Gh Ahmad Bhat");
  print("Ahmad Bhat");
  print("Ahmad Bhat");
  print("Ahmad Bhat");
  print("Ahmad Bhat");
  print("Ahmad Bhat");
  print("Ahmad Bhat");
  print("Ahmad Bhat");
  print("Ahmad Bhat");
  print("Ahmad Bhat");
}

withLoop() {
  for (int i = 0; i <= 10; i++) {
    print("Ahmad Bhat");
  }
  //OR
  for (int i = 1; i <= 10; i++) {
    print("Gh Rasool Bhat");
  }

  for (int i = 10; i >= 1; i--) {
    print(i);
  }
}

//! 1. For loop
//? Syntax

// for(initialization; condition; increment/decrement){
//             statements;
// }

//Sum of n natural numbers
sumOfNatural() {
  int total = 0;
  int n = 100; // change as per required

  for (int i = 1; i <= n; i++) {
    total = total + i;
  }

  print("Total is $total");
}

//Even Number between 50 to 100
even() {
  for (int number = 50; number <= 100; number++) {
    if (number % 2 == 0) {
      print(number);
    }
  }
}

//! 2 For each loop
// For each loop iterates over all list elements or variables.
// It is useful when you want to loop through list/collection.
//? Syntax
// collection.forEach(void f(value));

//Example 1
// print each item of list using foreach
item() {
  List<String> name = ["Apple", "Orange", "Peach", "Mango", "Plum"];
  name.forEach((element) => print(element));
}

//Example 2
// Print Each Total and Average Of Lists
eachItem() {
  List<int> number = [1, 2, 3, 4, 5, 6];
  int total = 0;
  number.forEach((num) => total = total + num);
  print("Total  is $total");
  double average = total / (number.length);
  print("Average is $average");
}

// using for loop
// Example in looop
usingForEach() {
  List<String> user = ['Ghani', 'Wani', 'Radio', 'Kapil', 'Adalat'];
  for (String name in user) {
    print(name);
  }
}

// Find Index Value Of List
indexBase() {
  List<String> player = ['Relondp', 'Kapi', 'Veeru', 'Khabib', 'Ali'];
  player.asMap().forEach((key, value) => print("$value idex is $key"));
}

// Unicode Value of Each Character of String
codePoint() {
  String name = "Shahid";

  for (var codePoint in name.runes) {
    print("Unicode of ${String.fromCharCode(codePoint)} is $codePoint.");
  }
}

//! 3 While Loop

// while loop, the loop’s body will run until and unless the condition
// is true. You must write conditions first before statements.
// This loop checks conditions on every iteration.
// If the condition is true, the code inside {} is executed,
// if the condition is false, then the loop stops.

/**
        Syntax
        while(condition){  
              //statement(s);  
              // Increment (++) or Decrement (--) Operation;  
        }  
*/

///? To Print 1 To 10 Using While Loop
whilelp() {
  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }
}

//? To Print 10 To 1 Using While Loop
whilelpRv() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

//? Display Sum of n Natural Numbers Using While Loop
whileNatural() {
  int i = 1;
  int total = 0;
  int number = 100;
  while (i < number) {
    total = total + i;
    i++;
  }
  print("Total is $total");
}

//? Even Numbers Between 50 to 100
whileEven() {
  int i = 50;
  //int num = 100;
  while (i <= 100) {
    if (i % 2 == 0) {
      print('This is $i');
    }
    i++;
  }
}

//! DO While Loop
// Do while loop is used to run a block of code multiple times.
// The loop’s body will be executed first, and then the condition is tested.

//? Syntax
/*
    do{
      statement1;
      statement2;
      .
      .
      .
      statementN;
    }while(condition);
*/

// In a do-while loop, the statements will be executed at least once time,
// even if the condition is false.
// It is because the statement is executed before checking the condition.

//? Print 1 To 10 Using Do While Loop
dowhlLow() {
  int i = 0;
  do {
    print('This is index $i');
    i++;
  } while (i <= 10);
}

//? To Print 10 To 1 Using Do While Loop
doWhlUp() {
  int i = 10;
  do {
    print('This is index $i');
    i--;
  } while (i >= 1);
}
