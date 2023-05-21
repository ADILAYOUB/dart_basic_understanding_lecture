// ignore_for_file: public_member_api_docs, sort_constructors_first
//! 1 Array
// An array is the collection of elements of the same type stored in contineous
// memory location
// Dart provides the build in support to array through ""LIST"" class

void shahid() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers[0]); // Output: 1
  List<String> name = ['Shahid', 'Gulam', 'Faried', 'Aftaq'];
  print(name[0]);
} // Output: Shahid
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
    this.next,
  });
}

//? Set: A collection of unique elements, without any defined order.
Set<String> fruits = {'apple', 'banana', 'orange'};

//? Map: A key-value pair collection where each key is unique.
Map<String, int> studentMarks = {'Alice': 90, 'Bob': 85, 'Charlie': 92};

//? Queue: A collection that follows the First-In-First-Out (FIFO) principle.;
//imported this import 'dart:collection';

/**
 * Queue<String> stack = Queue<String>();
    stack.add('A');
    stack.add('B');
    String lastElement = stack.removeLast();
 */

//? LinkedList: A collection of nodes, where each node contains
//? a value and a reference to the next node.

/**
 import 'package:collection/collection.dart';

    LinkedList<int> linkedList = LinkedList<int>();
    linkedList.add(1);
    linkedList.add(2);
    int firstElement = linkedList.first;
 */

///! Algorithms:

// Sorting Algorithms: Dart provides various sorting algorithms,
// including Bubble Sort, Insertion Sort, Merge Sort, and Quick Sort.
// These algorithms can be implemented on lists or arrays of elements.
// Example (Bubble Sort):

void bubbleSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

// List<int> numbers = [5, 3, 1, 4, 2];
// bubbleSort(numbers);
// print(numbers); // Output: [1, 2, 3, 4, 5]

//! Searching Algorithms:

// Dart offers various searching algorithms like Linear Search,
// Binary Search, and Hash-based searching algorithms.
// These algorithms help find the position or presence of
// an element in a data structure.

//? Example (Linear Search):

int linearSearch(List<int> arr, int target) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      return i;
    }
  }
  return -1; // Element not found
}

// List<int> numbers = [5, 3, 1, 4, 2];
// int target = 4;
// int index = linearSearch(numbers, target);
// print(index); // Output: 3 (index of target element)
