// in sold square we have grid of * matrics

// now we want to print only the boundary of the matrix;
/*
         * * * * * * => row 0 all *
         *         * 
         *         * 
         *         *  
         *         * 
         * * * * * *  
         => column 0 => all *
         last row and last column that is number - 1 == *;
        
        
 */

void main() {
  hollowSquare(8);
}

void hollowSquare(int number) {
  for (int i = 0; i < number; i++) {
    String line = '';
    for (int j = 0; j < number; j++) {
      if (i == 0 || i == number - 1 || j == 0 || j == number - 1) {
        line += '*';
      } else {
        line += ' ';
      }
    }
    print(line);
  }
}
