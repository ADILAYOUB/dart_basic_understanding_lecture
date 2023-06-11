//? Exercise on Set

// Given two integres a and b write a program to calculate the set of elements
// that belong to either a or b but not both
//for example
//  const a = {1,3};
//  const b = {3,5};
// The program should print {1,5}
//then calculate and print the sum of all the items in the resulting set

void main() {
  const a = {1, 3};
  const b = {3, 5};

  final result = a.union(b).difference(a.intersection(b));
  print(result);
  var sum = 0;
  for (var value in result) {
    sum += value;
  }
  print(sum);
}
