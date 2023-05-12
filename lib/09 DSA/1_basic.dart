// ignore_for_file: public_member_api_docs, sort_constructors_first
//! 1 Array
// An array is the collection of elements of the same type stored in contineous
// memory location
// Dart provides the build in support to array through ""LIST"" class

 List<int> numbers = [1, 2, 3, 4, 5];
print(numbers[0]); // Output: 1

List<String> name = ['Shahid', 'Gulam', 'Faried', 'Aftaq'];

print(name[0]);// Output: Shahid
//Print based on index

//! 2 Linked List 
// a linked list is a data structure consists of a sequence of nodes 
// where each node contains data and a ref. to the nex node 
// in dart we can use Linked List by using class and refrence 
//? Example of linked list and traversing its elements

class Node {
  int data = 0;
  Node? next;
    
    Node({
     this.next ,
  });
}
