/*
    1. Left Pyramid                   2. Right Pyramid                   
  
       *                                   *
       * *                               * *
       * * *                           * * *
       * * * *                       * * * *  
  
       * * * * *                   * * * * *
   row 0 star 1                    row 0 space 4 row 2 spaces 2 row 4 spaces 0
   row 1 star 2                    row 1 space 3 row 3 spaces 1
   row + 1;                        space n - row - 1
                                   stars => row 0 stars 1 row 2 stars 3 
                                            row 1 stars 2 row 3 stars 4
                                    stars = row +1; 

  3.Left Invers Pyramid        4. Right Inverse Pyramid     
  
       * * * * *                   * * * * *
       * * * *                       * * * *
       * * *                           * * *
       * *                               * * 
       *                                   *
   
   row 0 star 5                    row 0 space 0
   row 1 star 4                    row 1 space 1
   num - row ;                        space  row
                                   stars => row 0 stars 5 
                                            row 1 stars 4
                                    stars = num - row;   

          1
          22
          333
          4444
          4444
          333
          22
          1

  ## n= 4 => row 0 n = 1; row 1 n = 22; row 2 n = 333; row 3 n = 4444
  ## formula row + 1;



 */

import 'dart:io';

void main() {
  stdout.write("Enter the number: ");
  String number = stdin.readLineSync()!;
  int num = int.parse(number);

  //!  1. Left Pyramid
  for (int row = 0; row < num; row++) {
    String stars = '';
    for (int col = 0; col < row + 1; col++) {
      stars += '* ';
    }
    print(stars);
  }

  //! 2. Righ Pyramid
  for (int row = 0; row < num; row++) {
    String stars = '';
    // spaces
    for (int col = 0; col < num - row - 1; col++) {
      stars += ' ';
    }
    for (int col = 0; col < row + 1; col++) {
      stars += '*';
    }
    print(stars);
  }
  //!  3. Left Inverted Pyramid
  for (int row = 0; row < num; row++) {
    String stars = '';
    for (int col = 0; col < num - row; col++) {
      stars += '* ';
    }
    print(stars);
  }

  //! 4. Righ Inverted Pyramid
  for (int row = 0; row < num; row++) {
    String stars = '';
    // spaces
    for (int col = 0; col < row; col++) {
      stars += ' ';
    }
    for (int col = 0; col < num - row; col++) {
      stars += '*';
    }
    print(stars);
  }

  //! 5. number base pyramid
  for (int row = 0; row < num; row++) {
    String result = '';
    for (int col = 0; col < row + 1; col++) {
      result += '${row + 1}';
      // add * after each number, except the last one col < row || col != row
      if (col != row) {
        result += ' * ';
      }
    }
    print(result);
  }

  //! 6. Fancy Patter number base pyramid
  for (int row = 0; row < num; row++) {
    String result = '';
    for (int col = 0; col < row + 1; col++) {
      result += '${row + 1}';
      // add * after each number, except the last one col < row || col != row
      // it is m - 1 where m = ( row  + 1) which gives us the last one

      if (col != row) {
        result += ' * ';
      }
    }
    print(result);
  }
  for (int row = 0; row < num; row++) {
    String result = '';
    for (int col = 0; col < num - row; col++) {
      // check the last as we don't have to print the last *
      result += '${num - row}';
      // add * after each number, except the last one col < row || col != row
      // it is m - 1 where m = ( num - row ) which gives us the last one
      if (col != num - row - 1) {
        result += ' * ';
      }
    }
    print(result);
  }
}
