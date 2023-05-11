// Introduction
// This tutorial will teach you about dart Generics, how to create generics classes and methods with examples.

// Generics In Dart
// Generics is a way to create a class, or function that can work with different types of data (objects). If you look at the internal implementation of List class, it is a generic class. It can work with different data types like int, String, double, etc. For example, List<int> is a list of integers, List<String> is a list of strings, and List<double> is a list of double values.

//? Syntax
class ClassName<T> {
  // code
}

//Example 1
// Without Generics
// Creating a class for int
class IntData {
  int data;
  IntData(this.data);
}

// Creating a class for double
class DoubleData {
  double data;
  DoubleData(this.data);
}

void main() {
  // Create an object of IntData class
  IntData intData = IntData(10);
  DoubleData doubleData = DoubleData(10.5);
  // Print the data
  print("IntData: ${intData.data}");
  print("DoubleData: ${doubleData.data}");

  //Example 2:
  // create an object of type int and double
  Data<int> intDataa = Data<int>(10);
  Data<double> doubleDataa = Data<double>(10.5);

  // print the data
  print("IntData: ${intDataa.data}");
  print("DoubleData: ${doubleDataa.data}");

  //Example 3
  // call the generic method
  print("Int: ${genericMethod<int>(10)}");
  print("Double: ${genericMethod<double>(10.5)}");
  print("String: ${genericMethod<String>("Hello")}");
  //Example 4:
  // create objects of Circle and Rectangle
  var circle = Circle(10);
  var rectangle = Rectangle(10, 20);
  // create a list of Shape objects
  var region = Region(shapes: [circle, rectangle]);
  // print the total area
  print("Total Area of Region: ${region.totalArea}");
}

//Example: 2
// Using Generics
class Data<T> {
  T data;
  Data(this.data);
}

/***
 * Generics Type Variable
 * 
Generics type variables are used to define the type of data that can be used
 with the class. In the above example, T is a type variable.
  You can use any name for the type variable. A few typical names are T, E, K, and V.

    Name  	Work
      T	    Type
      E	    Element
      K	    Key
      V	    Value

    Dart Map Class
      
      Like List, internal implementation of Map work with different types of
      data like int, String, double, etc. This is because Map is a generic class.

        /// Dart implementation of Map class
        abstract class Map<K, V> {
          // code
          external factory Map();
        } 

        void main() {
        final info = {
          "name": "John",
          "age": 20,
          "height": 5.5,
        }
      }

*/

/// Generics Methods
// You can also create a generic method. For this, you need to use the <T>
// keyword before the method’s return type. See the example below.

// Define generic method Example 3:
T genericMethod<T>(T value) {
  return value;
}

//Example: 4
// abstract class Shape
abstract class Shape {
  // abstract method area
  double get area;
}

// class Circle which implements Shape
class Circle implements Shape {
  // field radius
  final double radius;
  // constructor
  Circle(this.radius);

  // implementation of area method
  @override
  double get area => 3.14 * radius * radius;
}

// class Rectangle which implements Shape
class Rectangle implements Shape {
  // fields width and height
  final double width;
  final double height;
  // constructor
  Rectangle(this.width, this.height);

  // implementation of area method
  @override
  double get area => width * height;
}

// Generic class Region
class Region<T extends Shape> {
  // field shapes
  List<T> shapes;
  // constructor
  Region({required this.shapes});

  // method totalArea
  double get totalArea {
    double total = 0;
    for (var shape in shapes) {
      total += shape.area;
    }
    return total;
  }
}

//Advantages of Generics
// It solve the problem of type safety.
// It helps to reuse our code.
