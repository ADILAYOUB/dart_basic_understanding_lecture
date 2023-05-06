//! Set In Dart
// Set is a unique collection of items.
// You cannot store duplicate values in the Set.
// It is unordered, so it can be faster than lists
// while working with a large amount of data.
// Set is useful when you need to store unique values without considering
// the order of the input.
// E.g., fruits name, months name, days name, etc.
// It is represented by Curley Braces{}.

// The list allows you to add duplicate items,
// but the Set doesn’t allow it.

//! Syntax
// Set <variable_type> variable_name = {};
// Set<String> means only text is allowed in the Set.

void example1() {
  Set<String> fruits = {"Apple", "Orange", "Mango"};
  print(fruits);
}

/*
Set Properties In Dart
Properties	Work
first	To get first value of Set.
last	To get last value of Set.
isEmpty	Return true or false.
isNotEmpty	Return true or false.
length	It returns the length of the Set.
*/
// Example of Set Properties Dart
void example2() {
  // declaring fruits as Set
  Set<String> fruits = {"Apple", "Orange", "Mango", "Banana"};

  // using different properties of Set
  print("First Value is ${fruits.first}");
  print("Last Value is ${fruits.last}");
  print("Is fruits empty? ${fruits.isEmpty}");
  print("Is fruits not empty? ${fruits.isNotEmpty}");
  print("The length of fruits is ${fruits.length}");
}

void example3() {
  Set<String> fruits = {"Apple", "Orange", "Mango"};
  print(fruits.contains("Mango"));
  print(fruits.contains("Lemon"));
}

// Add & Remove Items In Set
// add items use add() method and to remove use remove() method.
void addRemoveSet() {
  Set<String> fruits = {"Apple", "Orange", "Mango"};

  fruits.add("Lemon");
  fruits.add("Grape");

  print("After Adding Lemon and Grape: $fruits");

  fruits.remove("Apple");
  print("After Removing Apple: $fruits");
}

// Adding Multiple Elements
//  use addAll() method to add multiple elements from the list to Set.
void addAllSet() {
  Set<int> numbers = {10, 20, 30};
  numbers.addAll([40, 50]);
  print("After adding 40 and 50: $numbers");
}

//Printing All Values In Set

void printingSet() {
  Set<String> fruits = {"Apple", "Orange", "Mango"};

  for (String fruit in fruits) {
    print(fruit);
  }
}

// Set Methods
/*
* Method	     Description
   clear()	   Removes all elements from the Set.
difference()	 Creates a new Set with the elements of this that are not in other.
elementAt()	   Returns the index value of element.
intersection() Find common elements in two sets.
*/
// Clear Set
void clearSet() {
  Set<String> fruits = {"Apple", "Orange", "Mango"};
  // to clear all items
  fruits.clear();

  print(fruits);
}

// Difference In Set
void differenceInSet() {
  Set<String> fruits1 = {"Apple", "Orange", "Mango"};
  Set<String> fruits2 = {"Apple", "Grapes", "Banana"};

  final differenceSet = fruits1.difference(fruits2);

  print(differenceSet);
}

// Element At Method

void elementAt() {
  Set<String> days = {"Sunday", "Monday", "Tuesday"};
  // index starts from 0 so 2 means Tuesday
  print(days.elementAt(2));
}

// Intersection Method

void intersectionInSet() {
  Set<String> fruits1 = {"Apple", "Orange", "Mango"};
  Set<String> fruits2 = {"Apple", "Grapes", "Banana"};

  final intersectionSet = fruits1.intersection(fruits2);

  print(intersectionSet);
}
