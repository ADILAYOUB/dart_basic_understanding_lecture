//? Null Safety

// Null safety is a feature in the Dart programming language that helps
// developers to avoid null errors. This feature is called Sound Null Safety
// in dart. This allows developers to catch null errors at edit time.

// Advantage Of Null Safety
// Write safe code.
// educe the chances of application crashes.
// Easy to find and fix bugs in code.
// Null safety avoids null errors, runtime bugs, vulnerabilities, and system
// crashes which are difficult to find and fix.
////?Example 1: Using Null In Variables
// In the example below, the variable age is a int type. If you pass a null value
//to this variable, it will give an error instantly.
// void main() {
//    int age = null; // give error
// }

/* Problem With Null
 Programmers do have a lot of difficulties while handling null values.
 They forget that there are null values, so the program breaks.
 In real world null mostly acts as time bomb for programmers, which is ready to break the program.
 Common cause of errors in programming generally comes from not correctly handling null values.

Non-Nullable By Default
In Dart, variables and fields are non-nullable by default, which means that they
 cannot have a value null unless you explicitly allow it.

int productid = 20; // non-nullable
int productid = null; // give error
How To Declare Null Value
With dart sound null Safety, you cannot provide a null value by default.
 If you are 100% sure to use it, then you can use ? operator after the type declaration.
// Declaring a nullable variable by using ?
String? name;
This declares a variable name, which can be null or a string.

How To Assign Values To Nullable Variables
You can assign a value to nullable variables just like any other variable.
 However, you can also assign null to them.
void main(){
// Declaring a nullable variable by using ?
String? name;
// Assigning John to name
name = "John";
// Assigning null to name
name = null;
}
How To Use Nullable Variables
You can use nullable variables in many ways. Some of them are shown below:

You can use if statement to check whether the variable is null or not.
You can use ! operator, which returns null if the variable is null.
You can use ?? operator to assign a default value if the variable is null.
void main(){
// Declaring a nullable variable by using ?
String? name;
// Assigning John to name
name = "John";
// Assigning null to name
name = null;
// Checking if name is null using if statement
if(name == null){
print("Name is null");
}
// Using ?? operator to assign a default value
String name1 = name ?? "Stranger";
print(name1);
// Using ! operator to return null if name is null
String name2 = name!;
print(name2);
*/ //? Example 2: Define List Of Nullable Items

void main() {
  // list of nullable ints
  List<int?> items = [1, 2, null, 4];
  print(items);
  //Example 3
  //!  printAddress(null); // can't pass null
  //Example 4
  // Passing null to printAddress
  printAddressZ(null); // Works
}

// Eample 3: Null Safety In Dart Functions

void printAddress(String address) {
  print(address);
}

// Example 4: Define Function With Nullable Parameter
// address is a nullable string
void printAddressZ(String? address) {
  print(address);
  //Example 5
  //! Person person = Person(null);  // give error
  //Example 6
  PersonZ personZ = PersonZ(null); // Works
  print(personZ);

  //Example 7
  // Create a profile with a name and bio
  Profile profile1 = Profile("John", "Software engineer and avid reader");
  profile1.printProfile();

  // Create a profile with only a name
  Profile profile2 = Profile("Jane", null);
  profile2.printProfile();

  // Create a profile with only a bio
  Profile profile3 = Profile(null, "Loves to travel and try new foods");
  profile3.printProfile();

  // Create a profile with no name or bio
  Profile profile4 = Profile(null, null);
  profile4.printProfile();
}

//? Example 5: Null Safety In Dart Classes

class Person {
  String name;
  Person(this.name);
}

//? Example 6: Define Null To Class Property
class PersonZ {
  String? name;
  PersonZ(this.name);
}

// Example 7: Working With Nullable Class Properties
class Profile {
  String? name;
  String? bio;

  Profile(this.name, this.bio);

  void printProfile() {
    print("Name: ${name ?? "Unknown"}");
    print("Bio: ${bio ?? "None provided"}");
  }
}

/*
Important Point In Dart Null Safety
Null means no value.
Common error in programming is caused due to null.
Dart 2.12 introduced sound null Safety to solve null problems.
Non-nullable type is confirmed never to be null*/
