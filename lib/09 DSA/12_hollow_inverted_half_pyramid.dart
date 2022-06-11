/*
           * * * * * *
           *        *
           *      *
           *    *
           *  *
           * 
           Invert half hollow pyramid 

           logic => number = 6
           first row i = 0 => print all *;
           i=1 => j = 4;
           i=2 => j = 3;
           i=3 => j = 2;
           i=4 => j = 1;
           i=5 => j = 0; last row 
           first column j = 0 => print all *;

           form here we get to a formula => 
           ! column == number - row - 1;

*/

void main() {
  halfHollowPyramid(7);
}

void halfHollowPyramid(int number) {
  for (int row = 0; row < number; row++) {
    String line = '';
    for (int col = 0; col < number; col++) {
      if (row == 0 || col == 0 || col == number - row - 1) {
        line += '*';
      } else {
        line += ' ';
      }
    }
    print(line);
  }
}
