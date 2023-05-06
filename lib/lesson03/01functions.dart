//! Function In Dart

// Functions are the block of code that performs a specific task.
// They are created when some statements are repeatedly occurring in the program.
// The function helps reusability of the code in the program.

// Note: The main objective of the function is DRY(Don’t Repeat Yourself).

// Advantages
// 1. Avoid Code Repetition
// 2. Easy to divide the complex program into smaller parts
// 3. Helps to write a clean code

// Syntax
// returntype functionName(parameter1,parameter2, ...){
///. function body
// }
// Return type:
// It tells you the function output type.
// It can be void, String, int, double, etc.
// If the function doesn’t return anything,
// you can use void as the return type.

// Function Name:
// You can name functions by almost any name.
//Always follow a lowerCamelCase naming convention like void printName().

// Parameters:
// Parameters are the input to the function,
// which you can write inside the bracket ().
// Always follow a lowerCamelCase naming convention for your function parameter.

// writing function outside main function.
// void printName(){
//   print("My name is Raj Sharma. I am from function.");
// }
// this is our main function.
// void main(){
//   printName();
// }
// Example 2: Function To Find Sum of Two Numbers
//  void add(int num1, int num2){
//   int sum = num1 + num2;
//    print("The sum is $sum");
// }
// void main(){
//   add(10, 20);
// }
// In dart function are also objects.
// You should follow the lowerCamelCase naming convention while naming function.
//ou should follow the lowerCamelCase naming convention while naming function parameters.

// Function Paramaters Vs Arguments
// any programmers are often confused about parameters and arguments.
// Let’s have a look at this example.

// Here num1 and num2 are parameters
void add(int num1, int num2) {
  int sum;
  sum = num1 + num2;

  print("The sum is $sum");
}

void main() {
// Here 10 and 20 are arguments
  add(10, 20);
}
// Here in add(int num1, int num2), num1 and num2 are parameters
// and in add(10, 20), 10 and 20 are arguments.
// Parameter is the name and data type you define as an input for your function.
// Argument is the actual value that you passed in.

// Note: In dart, if you don’t write the return type of function.
// It will automatically understand.


/**
 *    Types Of Function
     Functions are the block of code that performs a specific task. 
     Here are different types of functions:

     1 No Parameter And No Return Type
     
     void printName() {
      print("My name is Salman Khan."); 
      }


     2 Parameter And No Return Type

      void printName(String name) {
      print("Welcome, ${name}.");
      }

      void add(int a, int b) {
        int sum = a + b;
        print("The sum is $sum");
        }
      
      void main() {
        int num1 = 10;
        int num2 = 20;
        add(num1, num2);
      }

     3 No Parameter And Return Type
     
     String primeMinisterName() {
      return "Pathan";
      }


     4 Parameter And Return Type

     // function that calculate interest
      double calculateInterest(double principal, double rate, double time) {
        double interest = principal * rate * time / 100;
        return interest;
      }

      void main() {
        double principal = 5000;
        double time = 3;
        double rate = 3;
        double result = calculateInterest(principal, rate, time);
        print("The simple interest is $result.");
}

 */

//Parameter 

//  parameter is the process of passing values to the function. 
//  The values passed to the function must match the number of parameters defined. 
//  A function can have any number of parameters.

/**
 * 
      1.  Position Parameter 
       must supply the arguments in the same order as you defined 
       on parameters when you wrote the function.
       void printInfo(String name, String gender) {
       print("Hello $name your gender is $gender.");
      }

      Providing Default Value On Positional Parameter
      void printInfo(String name, String gender, [String title = "sir/ma'am"]) {
      print("Hello $title $name your gender is $gender.");
      }

      2. Named Parameter 
      use named parameters to clarify the parameter’s meaning in function calls
      
      void namePara(String name, String age){
        print("my name is $name and my age is $age");

        required keyword,
        void requiredName(required String name, required String gender){
          print("my name is $name and i am $gender");
        } 
        which means one must pass the person’s name and gender. 
        If you don’t pass it, it won’t work.
      }

      3. Optional Parameter 

      void optionalPara(String name, String address, [String? title]){
        print("I am $title $name i am from $address ");
      }

 */

//! Anonymous Function
/**
     If you remove the return type and the function name, 
     the function is called anonymous function.
     (parameterList){
      // statements
      }

      void main() {
        const fruits = ["Apple", "Mango", "Banana", "Orange"];
        fruits.forEach((fruit) {
        print(fruit);
      });

      void main() {
      // Anonymous function
      var cube = (int number) {
      return number * number * number;
    };
    print("The cube of 2 is ${cube(2)}");
    print("The cube of 3 is ${cube(3)}");
    }
} */

//! Arrow function
 // arrow function is represented by => symbol. 
 // It is a shorthand syntax for any function that has only one expression.
 //! Syntax returnType functionName(parameters...) => expression;
 /**
  *     arrow function that calculate interest
     double calculateInterest(double principal, double rate, double time) =>
     principal * rate * time / 100;

     void main() {
       double principal = 5000;
       double time = 3;
       double rate = 3;
     
       double result = calculateInterest(principal, rate, time);
       print("The simple interest is $result.");
     }
  */


  //! Scope

// The scope is a concept that refers to where values can be 
// accessed or referenced. Dart uses curly braces {} to determine the scope 
// of variables. If you define a variable inside curly braces, 
// you can’t use it outside the curly braces.

//? Method Scope
// variables inside the method, you can use them inside the method block 
// but not outside the method block

//? Global Scope
// variable in the global scope to use the variable anywhere in your program.

//? Lexical Scope
// Dart is lexically scoped language, which means you can 
// find the scope of variables with the help of braces {}.