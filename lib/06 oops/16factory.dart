//? FACTORY CONSTRUCTOR IN DART

// In this section, you will learn about factory constructors with examples.

//? Factory Constructor
// All of the constructors that you have learned until now are generative
// constructors. Dart also provides a special type of constructor called
// a factory constructor.

// A factory constructor gives more flexibility to create an object.
// Generative constructors only create an instance of the class.
// But, the factory constructor can return an instance of the class
// or even subclass. It is also used to return the cached instance of the class.

// Syntax
/*
class ClassName {
  factory ClassName() {
    // TODO: return ClassName instance
  }

  factory ClassName.namedConstructor() {
    // TODO: return ClassName instance
  }
}
*/

// Rules For Factory Constructors

// Factory constructor must return an instance of the class or sub-class.
// You can’t use this keyword inside factory constructor.
// It can be named or unnamed and called like normal constructor.
// It can’t access instance members of the class.
// Example 1:
// An initializer list allows you to assign properties to a new instance
// variable before the constructor body runs, but after creation.

class Area {
  final int length;
  final int breadth;
  final int area;

  // Initializer list
  const Area(this.length, this.breadth) : area = length * breadth;
}

void main() {
  Area area = Area(10, 20);
  print("Area is: ${area.area}");

  // notice that here is a negative value
  Area area2 = Area(-10, 20);
  print("Area is: ${area2.area}");

  //Example: 2
  // This works
  Area2 area3 = Area2(10, 20);
  print("Area is: ${area3.area}");

  // notice that here is negative value
  Area2 area4 = Area2(-10, 20);
  print("Area is: ${area4.area}");

  //Example 3
  // create a person object
  final person = Person('John', 'Doe');

  // create a person object from map
  final person2 = Person.fromMap({'firstName': 'Harry', 'lastName': 'Potter'});

  // print first and last name
  print("From normal constructor: ${person.firstName} ${person.lastName}");
  print("From factory constructor: ${person2.firstName} ${person2.lastName}");

  //Example 4
  // create Shape object
  Shape shape = Shape(ShapeType.circle);
  Shape shape2 = Shape(ShapeType.rectangle);
  shape.draw();
  shape2.draw();

  // Example 5
  final person1 = Person5('John');
  final person22 = Person5('Harry');
  final person3 = Person5('John');

  // hashcode of person1 and person3 are same
  print("Person1 name is : ${person1.name} with hashcode ${person1.hashCode}");
  print(
      "Person2 name is : ${person22.name} with hashcode ${person22.hashCode}");
  print("Person3 name is : ${person3.name} with hashcode ${person3.hashCode}");

  //Example 6:
  Singleton obj1 = Singleton();
  Singleton obj2 = Singleton();
  print(obj1.hashCode);
  print(obj2.hashCode);
}

//Example 2:
class Area2 {
  final int length;
  final int breadth;
  final int area;

  // private constructor
  const Area2._internal(this.length, this.breadth) : area = length * breadth;

  // Factory constructor
  factory Area2(int length, int breadth) {
    if (length < 0 || breadth < 0) {
      throw Exception("Length and breadth must be positive");
    }
    // redirect to private constructor
    return Area2._internal(length, breadth);
  }
}

// With a factory constructor, you can initialize a final variable using logic
// that can’t be handled in the initializer list.

//? Example 3:
class Person {
  String firstName;
  String lastName;

  // constructor
  Person(this.firstName, this.lastName);

  // factory constructor Person.fromMap
  factory Person.fromMap(Map<String, Object> map) {
    final firstName = map['firstName'] as String;
    final lastName = map['lastName'] as String;
    return Person(firstName, lastName);
  }
}

// Example 4:
// enum ShapeType
enum ShapeType { circle, rectangle }

// abstract class Shape
abstract class Shape {
  // factory constructor
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.circle:
        return Circle();
      case ShapeType.rectangle:
        return Rectangle();
      default:
        throw 'Invalid shape type';
    }
  }
  // method
  void draw();
}

class Circle implements Shape {
  // implement draw method
  @override
  void draw() {
    print('Drawing circle');
  }
}

class Rectangle implements Shape {
  // implement draw method
  @override
  void draw() {
    print('Drawing rectangle');
  }
}

// Example 5:
class Person5 {
  // final fields
  final String name;

  // private constructor
  Person5._internal(this.name);

  // static _cache field
  static final Map<String, Person5> _cache = <String, Person5>{};

  // factory constructor
  factory Person5(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final person = Person5._internal(name);
      _cache[name] = person;
      return person;
    }
  }
}

// Singleton

// Singletons are a common design pattern in object-oriented programming.
// A singleton class can have only one instance and provides a global point
// of access to it. You can create a singleton in Dart by defining a factory
// constructor that always returns the same instance. It is mostly useful when
// you want to create a single instance of a class and use it throughout the
// application like database connection app.

// Example 6:
// Singleton using dart factory
class Singleton {
  // static variable
  static final Singleton _instance = Singleton._internal();

// factory constructor
  factory Singleton() {
    return _instance;
  }
  // private constructor
  Singleton._internal();
}

/**
 * Here Singleton._internal() is a private constructor so that it can not be
 *  called from outside the library. The factory constructor is used to return
 *  the same instance of the class.

Key Points
Here It means factory constructor

1. It uses the factory keyword to define a factory constructor.
2. It returns an instance of the same class or sub-class.
3. It is used to implement factory design patterns.
 [Return sub-class instance based on input parameter as shown in example 4]
4. It is used to implement singleton design patterns.
 [Return the same instance every time]
5. It is used to initialize a final variable using logic that can’t be handled in 
 the initializer list.
 */