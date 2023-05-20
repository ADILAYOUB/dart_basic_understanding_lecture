//! BASIC DART PROGRAM

//Basic Dart Program
//This is a simple dart program that prints Hello World on screen.
// Most programmers write the Hello World program as their first program.

/* First example run by removing commit
      void main() { 
         print("Hello World!"); 
        } 
         Show Output Hellp World!
 */

//As all are using main function try to comment one main function upon running
// the other one

//! Basic Dart Program Explained
/* void main() is the starting point where the execution of your program begins.
   Every program starts with a main function.
   The curly braces {} represent the beginning and the ending of a block of code.
   print(“Hello World!”); prints Hello World! on screen.
   Each code statement must end with a semicolon.
    
    Basic Dart Program For Printing Name
           void main()
          {
            var name = "Sameer!";
            print(name);
          }
           Show Output: Sameer!


        void main(){
          var firstName = "Sameer";
          var lastName = "Flutter";
          print("Full name is $firstName $lastName");
        }
        Show Output: Sameer Flutter 
       Here $variableName is used to join variables.
       This joining process in dart is called //! string interpolation.
 */

// Dart Program For Basic Calculation
// Performing addition, subtraction, multiplication, and division in dart.

void main() {
  int num1 = 10; //declaring number1
  int num2 = 3; //declaring number2

  /// Calculation
  int sum = num1 + num2;
  int diff = num1 - num2;
  int mul = num1 * num2;
  double div =
      num1 / num2; // It is double because it outputs number with decimal.

  /// displaying the output
  print("The sum is $sum");
  print("The diff is $diff");
  print("The mul is $mul");
  print("The div is $div");
}

/*
Steps To Create Dart Project
Open folder location on command prompt/terminal.
Type dart create project_name (For E.g. dart create first_app)
Type cd first_app
Type code . to open project with visual studio code
To check the main dart file go to bin/first_app.dart and edit your code.
Run Dart Project
First, open the project location on the command/terminal and run the project
with this command.

dart run
Convert Dart Code To Javascript
Command	Description
dart compile js filename.dart	Compile dart to javascript.
 You can run this file with Node.js.

Challenge
Create a new dart project with name stockmanagement and then run it.*/
