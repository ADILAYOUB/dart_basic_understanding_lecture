/*
              * * * *  * *
               * * * * * 
                * * * *
                 * * *
                  * *
                   *
      row     spaces    stars 
       0        0         4     4 - 0 = 4
       1        1         3     4 - 1 = 3
       2        2         2     4 - 2 = 2
       3        3         1     ....
       4        4         0
              rows      number - row  <= formulas

 */

import 'dart:io';

void main() {
  stdout.write("Enter the Number: ");
  String givenNumber = stdin.readLineSync()!;
  int num = int.parse(givenNumber);
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
