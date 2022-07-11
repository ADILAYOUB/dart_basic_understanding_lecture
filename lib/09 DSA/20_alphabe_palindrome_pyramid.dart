/*
   A
   A B A
   A B C B A
   A B C D C B A
   A B C D E D C B A
  
   1
   1 2
   1 2 3
   1 2 3 4
   1 2 3 4 5  
   first row for looping row = 0; row < number; row = row + 1
   for second loop col = 0; col < row + 1; col = col + 1
   print col + 1;

   to add => reverse counting 

   that is 
    1 
    1 2 1 
    1 2 3 2 1 
    1 2 3 4 3 2 1
    1 2 3 4 5 4 3 2 1  
    example 1
  It is of type left pyramid 
  formula col < row + 1
 */

import 'dart:io';

void main() {
  int n;
  stdout.write("Enter the number of rows: ");
  n = int.parse(stdin.readLineSync()!);

  for (int row = 0; row < n; row++) {
    for (int col = 1; col <= row + 1; col++) {
      stdout.write("$col ");
    }
    // reverse counting from n to 1
    // int i = n ; i > = 1 ; i --;
    // col = row as the reverse counting starts same as row
    // row 0 no reverse counting  row 1 rc 1 row 2 rc 2 1 row 3 rc 3 2 1
    for (int col = row; col >= 1; col--) {
      int ans = col + 1;
      String str = "$ans A";
      stdout.write("$str ");
    }
    stdout.write("\n");
  }

  // Her is for alphabet
  for (int row = 0; row < n; row++) {
    for (int col = 0; col < row + 1; col++) {
      int ans = col + 1;
      String ch = String.fromCharCode(ans + 'A'.codeUnitAt(0) - 1);
      stdout.write(ch);
    }
    // reverse counting
    for (int col = row; col >= 1; col--) {
      int ans = col + 1;
      String ch = String.fromCharCode(ans + 'A'.codeUnitAt(0) - 1);
      stdout.write(ch);
    }
    stdout.write('\n');
  }
}
