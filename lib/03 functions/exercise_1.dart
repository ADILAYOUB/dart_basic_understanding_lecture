// find sum of elements in a list
/*
      write a function called 'sum' that takes a list of values as an argument
      ('List<double>'), and returns the sum of all the values.

      Then call the function multiple times with different input value 
      (example: '[]', '[1,2]', '[1,2,3,4]') and print the result 
      
 */

void main() {
  print(sum([1, 2, 3, 4]));
}

double sum(List<double> num) {
  double sum = 0.0;
  for (var value in num) {
    sum += value;
  }
  return sum;
}
