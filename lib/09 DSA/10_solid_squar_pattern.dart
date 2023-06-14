/*
   Solid squear patter 
   example if number = 4 then pattern will be 
          * * * *
          * * * *
          * * * *
          * * * *
        if the number = 6 then pattern will be 

         * * * * * *
         * * * * * *
         * * * * * * 
         * * * * * *
         * * * * * *
         * * * * * * 
         
    it is a grid pattern and is like a matrix where we have rows and columns

    for number = 4 we have 4 rows and 4 columns 
  we have to loop through 4 row and 4 columns and print * in each box formed 
  by the row and column 


 */

void main() {
  solidStarPattern(3);
}

void solidStarPattern(int number) {
  for (int row = 0; row < number; row++) {
    String line = '';
    for (int col = 0; col < number; col++) {
      line += ' * ';
    }
    print(line.trim());
  }
}
