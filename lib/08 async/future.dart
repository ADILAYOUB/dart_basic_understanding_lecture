//? Future In Dart

// In dart, the Future represents a value or error that is not yet available.
// It is used to represent a potential value, or error, that will be available
// at some time in the future.

// How To Create Future
// You can create a future in dart by using Future class.
// Here the function will return Future<String> after 5 seconds.

// function that returns a future
Future<String> getUserName() async {
  return Future.delayed(Duration(seconds: 2), () => 'Mark');
}

// You can also create a future by using Future.value() method.
// Here the function will return Future<String> immediately.

// function that returns a future
Future<String> getUsersName() {
  return Future.value('Mark');
}
// How To Use Future In Dart
// You can use future in dart by using then() method.
// Here the function will return Future<String> after 5 seconds.

// function that returns a future
Future<String> getUserNamez() async {
  return Future.delayed(Duration(seconds: 2), () => 'Mark');
}

// main function
void main() {
  print("Start");
  getUserNamez().then((value) => print(value));
  print("End");

  //Ex 2
  print("Start");
  getData();
  print("End");
} //! Better and more efficient way
// Future<String> getUserNamezz() {
//   return Future.delayed(Duration(seconds: 2), () => 'Mark');
// }

// void main() async {
//   print("Start");
//   String username = await getUserNamezz();
//   print(username);
//   print("End");
// }

/* Future represents the result of an asynchronous operation and can have 2 states.
State Of Future
Uncompleted
Completed
Uncompleted
When you call an asynchronous function, it returns to an uncompleted future.
 It means the future is waiting for the function asynchronous operation to
  finish or to throw an error.
*/
// If the asynchronous operation performed by the function fails due to any
// reason, the future completes with an error.

// Example 2: Future

void getData() async {
  String data = await middleFunction();
  print(data);
}

Future<String> middleFunction() {
  return Future.delayed(Duration(seconds: 5), () => "Hello");
}
