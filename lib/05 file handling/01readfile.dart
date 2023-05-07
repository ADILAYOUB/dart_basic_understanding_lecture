//! File Handling

// File handling is an important part of any programming language.
// In this section, you will learn how to read the file in a
// dart programming language.

// Read File
// Assume that you have a file named test.txt
// in the same directory of your dart program.

// using File class and readAsStringSync() method.

// dart program to read from file
import 'dart:io';

void example1() {
  // creating file object
  File file = File('test.txt');
  // read file
  String contents = file.readAsStringSync();
  // print file
  print(contents);
}

// Get File Information
void example2() {
  // open file
  File file = File('test.txt');
  // get file location
  print('File path: ${file.path}');
  // get absolute path
  print('File absolute path: ${file.absolute.path}');
  // get file size
  print('File size: ${file.lengthSync()} bytes');
  // get last modified time
  print('Last modified: ${file.lastModifiedSync()}');
}
// file that does not exist, then it will throw an exception.

// CSV File
// A CSV (Comma Separated Values) file is a plain text file that
// contains data organized in a table format, where columns are separated
// by commas and rows are separated by line breaks. CSV files are used for:
void example3() {
  // open file
  File file = File('test.csv');
  // read file
  String contents = file.readAsStringSync();
  // split file using new line
  List<String> lines = contents.split('\n');
  // print file
  print('---------------------');
  for (var line in lines) {
    print(line);
  }
}

// Read Only Part Of File
// using substring() method.
void example4() {
  // open file
  File file = File('test.txt');
  // read only first 10 characters
  String contents = file.readAsStringSync().substring(0, 10);
  // print file
  print(contents);
}

// Read File From Specific Directory
void main() {
  // open file
  File file = File('C:\\Users\\test.txt');
  // read file
  String contents = file.readAsStringSync();
  // print file
  print(contents);
}
