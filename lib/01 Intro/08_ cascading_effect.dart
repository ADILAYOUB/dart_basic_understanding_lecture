/*

In Dart, //!the cascading effect, also known as method cascades,
 allows you to //?perform multiple operations on an object in a concise
  and readable manner. 
  It enables you to invoke multiple methods or set multiple properties
  on an object without the need for repeated dot notation. This feature
  is particularly useful when you need to chain several operations together.

To understand the cascading effect in Dart, let's look at an example. 
Suppose we have a class called Person with the following properties 
and methods:
 */

class Person {
  late String name;
  late int age;

  void setName(String newName) {
    name = newName;
  }

  void setAge(int newAge) {
    age = newAge;
  }

  void printDetails() {
    print('Name: $name, Age: $age');
  }
}

// Without cascading, if we wanted to create a Person object, set its
// name and age, and then print the details, we would do it like this:
//*  Person person = Person();
//*  person.setName('John');
//*  person.setAge(30);
//*  person.printDetails();

// With cascading, we can achieve the same result in a more concise and
//readable way. Here's how it looks:

Person person = Person()
  ..setName('John')
  ..setAge(30)
  ..printDetails();

/*
        In the cascading example, we create a new Person object using the
        Person() constructor. Then, we use the cascade operator (..) to 
        invoke methods on that object one after another without explicitly
        referencing the object itself.

    The first method invocation, ..setName('John'), sets the name property 
    of the person object to 'John'. The cascade operator allows us to chain 
    another method invocation, ..setAge(30), which sets the age property to 30. 
    Finally, we call ..printDetails(), which prints the details of the person object.

    By using cascading, we eliminate the need for repetitive object references
     and make the code more concise and readable. It's particularly useful when
      you want to perform a series of operations on the same object.

    It's important to note that cascading works with any method or property 
    that returns the same object type. In the example above, each method 
    (setName, setAge) returns void, so we can continue cascading subsequent 
    method invocations. However, if a method returned a different object type, 
    cascading would not be possible.

    Here's another example that demonstrates cascading with properties:
  
   */
class Circle {
  late double radius;
  late String color;

  Circle setRadius(double newRadius) {
    radius = newRadius;
    return this;
  }

  Circle setColor(String newColor) {
    color = newColor;
    return this;
  }

  void printDetails() {
    print('Radius: $radius, Color: $color');
  }
}

Circle circle = Circle()
  ..setRadius(5.0)
  ..setColor('red')
  ..printDetails();


// In this example, we have a Circle class with setRadius and setColor methods. 
// These methods return the current instance of the Circle object using the 
// return this statement. This allows us to chain the method invocations 
// together with the cascade operator.


/**
     Overall, the cascading effect in Dart provides a convenient way to 
     perform multiple operations on an object in a concise and readable manner. 
     It improves code readability and reduces the need for repetitive object 
     references, making your code more maintainable and efficient.
 */