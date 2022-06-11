/*
                  *                      
                 * *
                *   *
               *     *
              *       *
             *         *
            *           *
           *             *
           *             *
            *           *
             *         *
              *       *
               *     *
                *   *
                 * *
                  *
           Hollow Diamond 
          top half
           n= 4;
           row 0 => _ _ _ *   (between stars spaces ) 0
           row 1 => _ _ * _ *            1
           row 2 => _ * _ _ _  *         3
           row 3 => * _ _ _ _ _  *       5 => odd number => (2n + 1 / 2n - 1)
           and check the condition for first and last 
           where we have to print the stars 
           row   spaces    stars
           0       3         1  
           1       2         2
           2       2         2
           3       0         2
                (n-row-1)   

                bottom half 
                row 0 => * - - - - - *  
                row 1 => _* - - - *
                row 2 => _ _* _ *
                row 3 =< _ _ _*
            row    spaces  
            0        0
            1        1
            2        2
            3        3
 */

import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  String num = stdin.readLineSync()!;
  int number = int.parse(num);

  // Hollow pyramid
  // top half
  for (int row = 0; row < number; row = row + 1) {
    String star = '';

    // spaces
    for (int col = 0; col < number - row - 1; col = col + 1) {
      star += ' ';
    }

    // stars
    for (int col = 0; col < 2 * number + 1; col = col + 1) {
      // first character
      if (col == 0) {
        star += '*';
      }
      // last character
      else if (col == 2 * row) {
        star += '*';
      } else {
        star += ' ';
      }
    }
    print(star);
  }

  // bottom half
  // top half
  for (int row = 0; row < number; row = row + 1) {
    String star = '';

    // spaces
    for (int col = 0; col < row; col = col + 1) {
      star += ' ';
    }

    // stars
    for (int col = 0; col < 2 * number - 2 * row - 1; col = col + 1) {
      // first character
      if (col == 0) {
        star += '*';
      }
      // last character
      else if (col == 2 * number - 2 * row - 2) {
        star += '*';
      } else {
        star += ' ';
      }
    }
    print(star);
  }
  print(' ');
}
