/*
       * * * * *  * * * * *
       * * * *      * * * *
       * * *          * * *
       * *              * * 
       *                  *
       *                  *
       * *              * *
       * * *          * * *
       * * * *      * * * *  
       * * * * *  * * * * *
        Solid Diamond 

        row  stars spaces
        0     5      1
        1     4      3
        2     3      5
        3     2      7
        4     1      9
    
    A.  Top of pyramid    
      1.  stars => n= 5 row 0 star 5:  n= 5 row 1 star 4 
                 n= 5 row 2 star 3
                 star = number - row;

      2.  spaces => 2*row+1;

      3. for stars same as top 

    B. Bottom of Pyramid 

      row  stars  spaces
       0     1      9
       1     2      7
       2     3      5
       3     4      3
       4     5      1

      1.  stars: 
           n = 5 row 0 star 1  
           n = 5 row 1 star 2 
          formula row + 1;
      
      2.  spaces 

          n = 5 row 0 spaces 9 
          n = 5 row 1 spaces 7
          n = 5 row 2 spaces 5
          formula 2 (n-row) - 1

      3. stars: 



        
 */

import 'dart:io';

void main() {
  stdout.write("Enter the number: ");
  String number = stdin.readLineSync()!;
  int num = int.parse(number);

  //top part of pyramid
  for (int row = 0; row < num; row = row + 1) {
    String star = '';
    // stars
    for (int col = 0; col < num - row; col = col + 1) {
      star += '*';
    }
    //spaces
    for (int col = 0; col < 2 * row + 1; col = col + 1) {
      star += ' ';
    }
    // stars
    for (int col = 0; col < num - row; col = col + 1) {
      star += '*';
    }
    print(star);
  }
  // for bottom half
  for (int row = 0; row < num; row = row + 1) {
    String stars = '';
    // stars
    for (int col = 0; col < row + 1; col = col + 1) {
      stars += '*';
    }
    // spaces
    for (int col = 0; col < 2 * (num - row) - 1; col = col + 1) {
      // 2*num*2row-1
      stars += ' ';
    }
    // stars
    for (int col = 0; col < row + 1; col = col + 1) {
      stars += '*';
    }
    print(stars);
  }

  print(' ');
}
