// Delete File
// Assume that you have a file named test.txt in the same directory
// of your dart program. Now, let’s delete it.

// dart program to delete file
import 'dart:io';

void example1() {
  // open file
  File file = File('test.txt');
  // delete file
  file.deleteSync();
  print('File deleted.');
}

// If you try to delete a file that does not exist, then it will throw an exception.

// Delete File If Exists

// You can use File.existsSync() method to check if a file exists or not.
// If it exists, then you can delete it.

// dart program to delete file if exists
void example2() {
  // open file
  File file = File('test.txt');
  // check if file exists
  if (file.existsSync()) {
    // delete file
    file.deleteSync();
    print('File deleted.');
  } else {
    print('File does not exist.');
  }
}
