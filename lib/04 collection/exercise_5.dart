/*
  ## Exercise: Implementing the Where function

  Implementing a 'Where' function which takes tow arguments 

  - A list of items 
  - A function argument that can be used to filter items in the list by 
  elevating each item with a boolean condition 

  This funtion should return a new list, where contains the items filtered using 
  the function argument 

  Use generic, so the where function can work on the list of any type 

  Then use the funtion to retrive all the odd numbers from the list 
  list: [1,2,3,4] and print the result 

 */

void main() {
  const list = [1, 2, 3, 4, 5];
  final oddNumbers = where(list, (value) => value % 2 == 1);
  print(oddNumbers);
}

List<T> where<T>(List<T> items, bool Function(T) f) {
  // implement fun body

  var result = <T>[];
  for (var value in items) {
    if (f(value)) {
      result.add(value);
    }
  }
  return result;
}
