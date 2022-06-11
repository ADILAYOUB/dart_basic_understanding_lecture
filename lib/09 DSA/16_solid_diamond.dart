/*
                          *
                         * *
                        * * *
                       * * * *
                       * * * *
                        * * *
                         * *
                          *

 */

import 'dart:io';

void main() {
  stdout.write("Enter the Number: ");
  String givenNumber = stdin.readLineSync()!;
  int num = int.parse(givenNumber);
  //! Full Pyramid
  for (int row = 0; row < num; row = row + 1) {
    String star = '';
    // spaces
    for (int col = 0; col < num - row - 1; col = col + 1) {
      star += ' ';
    }
    // stars
    for (int col = 0; col < row + 1; col = col + 1) {
      star += '*';
    }
    print(star);
  }
  //! Inverted Full Pyramid
  for (int row = 0; row < num; row = row + 1) {
    String star = '';
    // spaces
    for (int col = 0; col < row; col = col + 1) {
      star += ' ';
    }
    // star
    for (int col = 0; col < num - row; col = col + 1) {
      star += '*';
    }
    print(star);
  }
  print(' ');
}
