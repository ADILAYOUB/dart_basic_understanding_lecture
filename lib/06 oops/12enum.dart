//! Enum In Dart
// An enum is a special type that represents a fixed number of constant values.
// An enum is declared using the keyword enum followed by the enum’s name.

/*Syntax Of Enum In Dart
enum enumName {
  constantName1,
  constantName2,
  constantName3,
  ...
  constantNameN
}*/
//?Example 1:

enum Days { sunday, monday, tuesday, wednesday, thrusday, friday, saturday }

void main() {
  var today = Days.friday;
  switch (today) {
    case Days.sunday:
      print("Today is Sunday.");
      break;
    case Days.monday:
      print("Today is Monday.");
      break;
    case Days.tuesday:
      print("Today is Tuesday.");
      break;
    case Days.wednesday:
      print("Today is Wednesday.");
      break;
    case Days.thrusday:
      print("Today is Thursday.");
      break;
    case Days.friday:
      print("Today is Friday.");
      break;
    case Days.saturday:
      print("Today is Saturday.");
      break;
  }

  //Example 2
  Person p1 = Person("Javid", "Davood", Gender.male);
  p1.display();

  Person p2 = Person("Mudasir", "Shahid", Gender.female);
  p2.display();

  //Example 3
  // Days.values: It returns all the values of the enum.
  for (DaysZ day in DaysZ.values) {
    print(day);
  }

  //Example 4
  CompanyType soleProprietorship = CompanyType.soleProprietorship;
  print(soleProprietorship.text);
}

//? Example 2:

enum Gender { male, female, other }

class Person {
  // Properties
  String? firstName;
  String? lastName;
  Gender? gender;

  // Constructor
  Person(this.firstName, this.lastName, this.gender);

  // display() method
  void display() {
    print("First Name: $firstName");
    print("Last Name: $lastName");
    print("Gender: $gender");
  }
}

//Print All Enum Values

enum DaysZ { sunday, monday, tuesday, wednesday, thursday, friday, saturday }

//? Advantages Of Enum
// It is used to define a set of named constants.
// Makes your code more readable and maintainable.
// It makes the code more reusable and makes it easier for developers.

enum CompanyType {
  soleProprietorship("Sole Proprietorship"),
  partnership("Partnership"),
  corporation("Corporation"),
  limitedLiabilityCompany("Limited Liability Company");

  // Members
  final String text;
  const CompanyType(this.text);
}
