//! Map
// In a Map, data is stored as keys and values.
// In Map, each key must be unique.
// They are similar to HashMaps and Dictionaries in other languages.

void example1() {
  Map<String, String> countryCapital = {
    'USA': 'Washington, D.C.',
    'India': 'New Delhi',
    'China': 'Beijing'
  };
  print(countryCapital);
}
// Here Usa, India, and China are keys, and it must be unique.

//? Access Value From Key
void example2() {
  Map<String, String> countryCapital = {
    'USA': 'Washington, D.C.',
    'India': 'New Delhi',
    'China': 'Beijing'
  };
  print(countryCapital["USA"]);
}

/*
  Map Properties
  Properties	      Work
    keys	      To get all keys.
    values	    To get all values.
    isEmpty	    Return true or false.
    isNotEmpty	Return true or false.
    length	    It returns the length of the Map.
    
*/
void example3() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  print("All keys of Map: ${expenses.keys}");
  print("All values of Map: ${expenses.values}");
  print("Is Map empty: ${expenses.isEmpty}");
  print("Is Map not empty: ${expenses.isNotEmpty}");
  print("Length of map is: ${expenses.length}");
}

//? Adding Element To Map

void example4() {
  Map<String, String> countryCapital = {
    'USA': 'Washington, D.C.',
    'India': 'New Delhi',
    'China': 'Beijing'
  };
  // Adding New Item
  countryCapital['Japan'] = 'Tokio';
  print(countryCapital);
}

//? Updating An Element Of Map
void example5() {
  Map<String, String> countryCapital = {
    'USA': 'Nothing',
    'India': 'New Delhi',
    'China': 'Beijing'
  };
  // Updating Item
  countryCapital['USA'] = 'Washington, D.C.';
  print(countryCapital);
}

//? Map Methods  Properties	Work
/*
keys.toList()	Convert all Maps keys to List.
values.toList()	Convert all Maps values to List.
containsKey(‘key’)	Return true or false.
containsValue(‘value’)	Return true or false.
clear()	Removes all elements from the Map.
removeWhere()	Removes all elements from the Map if condition is valid.
*/
void example6() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  // Without List
  print("All keys of Map: ${expenses.keys}");
  print("All values of Map: ${expenses.values}");

  // With List
  print("All keys of Map with List: ${expenses.keys.toList()}");
  print("All values of Map with List: ${expenses.values.toList()}");
}

//? Check Map Contains Specific Key/Value Or Not?

void example7() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  // For Keys
  print("Does Map contain key sun: ${expenses.containsKey("sun")}");
  print("Does Map contain key abc: ${expenses.containsKey("abc")}");

  // For Values
  print("Does Map contain value 3000.0: ${expenses.containsValue(3000.0)}");
  print("Does Map contain value 100.0: ${expenses.containsValue(100.0)}");
}

//? Removing Items From Map

void example8() {
  Map<String, String> countryCapital = {
    'USA': 'Nothing',
    'India': 'New Delhi',
    'China': 'Beijing'
  };

  countryCapital.remove("USA");
  print(countryCapital);
}

//? Looping Over Element Of Map
void example9() {
  Map<String, dynamic> book = {
    'title': 'Misson Mangal',
    'author': 'Kuber Singh',
    'page': 233
  };

  // Loop Through Map
  for (MapEntry book in book.entries) {
    print('Key is ${book.key}, value ${book.value}');
  }
}

//? Looping In Map Using For Each
void example10() {
  Map<String, dynamic> book = {
    'title': 'Misson Mangal',
    'author': 'Kuber Singh',
    'page': 233
  };

  // Loop Through For Each
  book.forEach((key, value) => print('Key is $key and value is $value'));
}

//? Remove Where In Map
void main() {
  Map<String, double> mathMarks = {
    "ram": 30,
    "mark": 32,
    "harry": 88,
    "raj": 69,
    "john": 15,
  };
  mathMarks.removeWhere((key, value) => value < 32);
  print(mathMarks);
}
