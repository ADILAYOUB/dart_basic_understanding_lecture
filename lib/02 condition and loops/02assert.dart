//! Assert
// While coding, it is hard to find errors in big projects, 
//so dart provide a assert method to check for the error. 
//It takes conditions as an argument. 
//If the condition is true, nothing happens. 
//If a condition is false, it will raise an error.

// Syntax
// You can use assert without a custom message or with a custom message.

//* assert(condition);
// or 
//* assert(condition, "Your custom message");

// Example How To Use Assert In Dart Program
// This example shows how you can use assert without a custom message.
/**
         var age = 22;
        assert(age!=22);
 */
 
/// How to Run File In Assert Mode
// Use this command to run the dart file, which enables assert. 
//If you don’t use this, you will not be able to see the issue. 
//You can use this command below if you are running a dart file from the computer.

//! dart --enable-asserts file_name.dart

//? Note: The assert(condition) method only runs in development mode. 
//? It will throw an exception only when the condition is false 