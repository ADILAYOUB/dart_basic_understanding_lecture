/*
   N= 6 

                *                              
              * * *                             
            * * * * *                            
          * * * * * * *     => N = 4 => column = 7                      
        * * * * * * * * *                         
      * * * * * * * * * * *  => N= 6 => column = 11;                   
   This is full pyramid 
   it is a matrix of the form 6 * 11;
   which means N*(2N - 1)
   Now counting * row wise 
   1st row 1 * ; 2nd row 3; 3rd row 5; 4th row 7; 5th row 9; 6th row 11;
   === where we need spaces 
  first row  5 space , * , 5 space;
  second row 4 space , * , 4 space;
  third row  3 space , * , 3 space;
  fourth row 2 space , * , 2 space;
  fifth row  2 space , * , 2 space;

  condition column < number - row -1 => print space 
  second condition => row 1,3,5,7,9,11=> k = 0 k= 2 * row + 1 print * k ++
  third condition => print space 
   
     
         *
        * *
       *   *
      *     *
     *       *
    * * * * * *
    Hollow pyramid

 
 
  */

void main() {
  hollowPyramid(6);
}

void hollowPyramid(int number) {
  for (int row = 0; row < number; row++) {
    int k = 0;
    String line = '';
    for (int col = 0; col < ((2 * number) - 1); col++) {
      if (col < number - row - 1) {
        line += ' ';
      } else if (k < 2 * row + 1) {
        line += '*';
        k++;
      } else {
        line += ' ';
      }
    }
    print(line);
  }
}
