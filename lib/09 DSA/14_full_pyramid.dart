/*
          *     => four  spaces on the right to the * => one star
         * *    => three spaces => two stars
        * * *   => two   spaces => three stars 
       * * * *  => one   spaces => four stars
      * * * * * => zero  spaces => five stars 
     1. n = 5 that is rows are five 
     thus our outer loop will be 
     for (int row = 0; row < number; row = row +1){
      inner loop 
      in which i will build the logic for spaces and stars 
      2. for spaces => number - [row +1] = number - row - 1
      for(int col = 0; col < number - row - 1; col = col + 1){
        print star;
      }

      3. for strs => row 0 => 1 star ; row 1 => 2 stars; row 2 => 3 stars .....
                     thus formula will be stars = row +1
      for(k < row +1 ){
        print *
      }

     }
 */

import 'dart:io';

void main() {
  stdout.write('Enter your number: ');
  String num = stdin.readLineSync()!;
  int number = int.parse(num);
  for (int row = 0; row < number; row = row + 1) {
    String star = '';
    // spaces
    for (int col = 0; col < number - row - 1; col = col + 1) {
      star += ' ';
    }
    // stars
    for (int col = 0; col < row + 1; col = col + 1) {
      star += '*';
    }
    print(star);
  }
  print(' ');
}
