//! Dart Enumeratio

// An enumeration is a set of values called as elements, members, etc.
// This is essential when we carried out the operation with the limited
// set of values available for variable.
// For example - you can think of the days of the month can only be one of
// the seven days - Sun, Mon, Tue, Wed, Thur, Fri, Sat.

// Initializing an Enumeration
// The enumeration is declared using the enum keyword, followed
// by the comma-separated list of the valid identifiers.
// This list is enclosed within the curly braces {}. The syntax is given below.

/* enum <enum_name> {  
    const1,   
    const2,   
    ....., constN  
} */

enum EnumofYear {
  january,
  february,
  march,
  april,
  may,
  june,
  july,
  august,
  september,
  october,
  november,
  december
}

void example() {
  print("Enumeration");
  print(EnumofYear.values);
  for (var v in EnumofYear.values) {
    print('value: $v, index: ${v.index}');
  }
}

enum ProcessStatus { none, running, stopped, paused }

void example2() {
  print(ProcessStatus.values);
  for (var v in ProcessStatus.values) {
    print('value: $v, index: ${v.index}');
  }
  print('running: ${ProcessStatus.running}, ${ProcessStatus.running.index}');
  print('running index: ${ProcessStatus.values[1]}');
}
