// File class and writeAsStringSync() method.

//! Write File In Dart
import 'dart:io';

void example1() {
  // open file
  File file = File('test.txt');
  // write to file
  file.writeAsStringSync('Welcome to test.txt file.');
  print('File written.');
}
// If you have already some content in test.txt file, then it will be
// removed and replaced with new content.

// Add New Content To Previous Content
void example2() {
  // open file
  File file = File('test.txt');
  // write to file
  file.writeAsStringSync('\nThis is a new content.', mode: FileMode.append);
  print('Congratulations!! New content is added on top of previous content.');
}

// write CSV File
void example3() {
  // open file
  File file = File("students.csv");
  // write to file
  file.writeAsStringSync('Name,Phone\n');
  for (int i = 0; i < 3; i++) {
    // user input name
    stdout.write("Enter name of student ${i + 1}: ");
    String? name = stdin.readLineSync();
    stdout.write("Enter phone of student ${i + 1}: ");
    // user input phone
    String? phone = stdin.readLineSync();
    file.writeAsStringSync('$name,$phone\n', mode: FileMode.append);
  }
  print("Congratulations!! CSV file written successfully.");
}
// create any type of file using writeAsStringSync() method.
// For example, .html, .json, .xml, etc.