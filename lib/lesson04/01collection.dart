//! List In Dart

// If you want to store multiple values in the same variable,
// you can use List. List in dart is similar to Arrays in other programming
// languages. E.g. to store the names of multiple students, you can use a List.
// The List is represented by Square Braces[].
// [] is used to represent a List.

// Integer List
// List<int> ages = [10, 30, 23];

// String List
// List<String> names = ["Raj", "John", "Rocky"];

// Mixed List
// var mixed = [10, "John", 18.8];

//* Types Of Lists
//  Fixed Length List
//  Growable List [Mostly Used]
//  Fixed Length List

//! The fixed-length Lists are defined with the specified length.
void fixedLength() {
  var list = List<int>.filled(5, 0);
  print(list);
}
// You cannot change the size at runtime. This will create List of 5 integers with the value 0.
// You cannot add a new item to Fixed Length List, but you can change the values of List.

//! Growable List
// A List defined without a specified length is called Growable List.
// The length of the growable List can be changed in runtime.

void growingList() {
  var list1 = [210, 21, 22, 33, 44, 55];
  print(list1);
}

//! Access Item Of List
// You can access the List item by index.
//Remember that the List index always starts with 0.

void accessList() {
  var list = [210, 21, 22, 33, 44, 55];

  print(list[0]);
  print(list[1]);
  print(list[2]);
  print(list[3]);
  print(list[4]);
  print(list[5]);
}

//! Get Index By Value
// You can also get the index by value.

void indexList() {
  var list = [210, 21, 22, 33, 44, 55];

  print(list.indexOf(22));
  print(list.indexOf(33));
}

//! Find The Length Of The List
//  You can find the length of List by using .length property.

void lengthOfList() {
  List<String> names = ["Raj", "John", "Rocky"];
  print(names.length);
}
// Remember that List index starts with 0 and length always starts with 1.

//! Changing Values Of List
// You can also change the value of List. You can do it by listName[index]=value;.
// For more, see the example below.

void changingValueOfList() {
  List<String> names = ["Raj", "John", "Rocky"];
  names[1] = "Bill";
  names[2] = "Elon";
  print(names);
}

//! Mutable And Immutable List
// A mutable List means they can change after the declaration,
// and an immutable List means they can’t change after the declaration.
/*
List<String> names = ["Raj", "John", "Rocky"]; // Mutable List
names[1] = "Bill"; // possible
names[2] = "Elon"; // possible
    
const List<String> names = ["Raj", "John", "Rocky"]; // Immutable List
names[1] = "Bill"; // not possible
names[2] = "Elon"; // not possible

*/

//! List Properties
//? first: It returns the first element in the List.
//? last: It returns the last element in the List.

void findFirstList() {
  List<String> drinks = ["water", "juice", "milk", "coke"];
  print("First element of the List is: ${drinks.first}");
  print("Last element of the List is: ${drinks.last}");
}

//? isEmpty: It returns true if the List is empty and false if the List is not empty.
//? isNotEmpty: It returns true if the List is not empty and false if the List is empty.

void isEmptyOrNot() {
  List<String> drinks = ["water", "juice", "milk", "coke"];
  List<int> ages = [];
  print("Is drinks Empty: ${drinks.isEmpty}");
  print("Is drinks not Empty: ${drinks.isNotEmpty}");
  print("Is ages Empty: ${ages.isEmpty}");
  print("Is ages not Empty: ${ages.isNotEmpty}");
}

//? length: It returns the length of the List.
//? reversed: It returns a List in reverse order.

void reverse() {
  List<String> drinks = ["water", "juice", "milk", "coke"];
  print("List in reverse: ${drinks.reversed}");
}

//? single: It is used to check if the List has only one element and returns it.

//! Adding Item To List

/*
Method	     Description

add()	       Add one element at a time and returns the modified List object.

addAll()	   Insert the multiple values to the given List, 
             and each value is separated by the commas and enclosed with a square bracket ([]).

insert()	   Provides the facility to insert an element at a specified index position.

insertAll()	 Insert the multiple value at the specified index position.

*/
// adding an item to evenList using add() method.

void addList() {
  var evenList = [2, 4, 6, 8, 10];
  print(evenList);
  evenList.add(12);
  print(evenList);
}

// Example 2: Add Items To List
// using addAll() method.

void addAllList() {
  var evenList = [2, 4, 6, 8, 10];
  print(evenList);
  evenList.addAll([12, 14, 16, 18]);
  print(evenList);
}

// Example 3: Insert Item To List
// adding an item to myList using insert() method.

void insertList() {
  List myList = [3, 4, 2, 5];
  print(myList);
  myList.insert(2, 15);
  print(myList);
}

// Example 4: Insert Items To List
// using insertAll() method.

void insertAllList() {
  var myList = [3, 4, 2, 5];
  print(myList);
  myList.insertAll(1, [6, 7, 10, 9]);
  print(myList);
}

// Replace Range Of List
void replaceList() {
  var list = [10, 15, 20, 25, 30];
  print("List before updation: $list");
  list.replaceRange(0, 4, [5, 6, 7, 8]);
  print("List after updation using replaceAll() function : $list");
}
/* 
* Removing List Elements
* Method	       Description
  remove()	     Removes one element at a time from the given List.
  removeAt()	   Removes an element from the specified index position and returns it.
  removeLast()	 Remove the last element from the given List.
  removeRange()	 Removes the item within the specified range.
*/
// Example 1: Removing List Item From List
// In this example below, we are removing item of List using remove() method.

void removeList() {
  var list = [10, 20, 30, 40, 50];
  print("List before removing element : $list");
  list.remove(30);
  print("List after removing element : $list");
}

// Example 2: Removing List Item From List
// using removeAt() method.

void removeListAt() {
  var list = [10, 11, 12, 13, 14];
  print("List before removing element : $list");
  list.removeAt(3);
  print("List after removing element : $list");
}

// Example 3: Removing Last Item From List
//  using removeLast() method.

void removeLastList() {
  var list = [10, 20, 30, 40, 50];
  print("List before removing element:$list");
  list.removeLast();
  print("List after removing last element:$list");
}

// Example 4: Removing List Range From List
// using removeRange() method.

void removeRangeList() {
  var list = [10, 20, 30, 40, 50];
  print("List before removing element:$list");
  list.removeRange(0, 3);
  print("List after removing range element:$list");
}

// Loops In List
// use for loop, for each loop, or any other type of loop.

void loopList() {
  List<int> list = [10, 20, 30, 40, 50];
  list.forEach((n) => print(n));
}

// Multiply All Value By 2 Of All List
// This example below multiply value of List item by 2.

void multipleListByTwo() {
  List<int> list = [10, 20, 30, 40, 50];
  var douledList = list.map((n) => n * 2);

  print((douledList));
}

// Combine Two Or More List
// You can combine two or more Lists in dart by using spread syntax.

void combineTwoList() {
  List<String> names = ["Raj", "John", "Rocky"];
  List<String> names2 = ["Mike", "Subash", "Mark"];

  List<String> allNames = [...names, ...names2];
  print(allNames);
}

// Conditions In List
void conditionInList() {
  bool sad = false;
  var cart = ['milk', 'ghee', if (sad) 'Beer'];
  print(cart);
}

// Where In List Dart
// You can use where with List to filter specific items.
// Here in this example, even numbers are only filtered.

void whereConditionInList() {
  List<int> numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14];

  List<int> even = numbers.where((number) => number.isEven).toList();
  print(even);
}

// Choose Lists if order matters. You can easily add items to the end.
// Searching can be slow when the List size is big.
