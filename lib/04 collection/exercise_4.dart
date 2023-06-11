/*
       const bananas = 5;
       const apples = 6;
      const grains = {
          'pasta': '500g',
          'rice': '1kg',
      };
  
    const addGrains = true;
    var shoppingList = {};
    if (bananas > 0) {
    shoppingList['bananas'] = bananas;
    }
   
    if (apples > 0) {
    shoppingList['apples'] = apples;
    }
    
    if (addGrains) {
    shoppingList.addAll(grains);
    }
  
  print('Old Shopping List: ');
  print(shoppingList);

 ==>output prints {bananas: 5, apples: 6, pasta: 500g, rice: 1kg}
}

Rewrite this code so that the 'shoppingList' variable is initialized using 
* collection-if, collection-for or spread, and the program output is unchanged
*/

void main() {
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500g',
    'rice': '1kg',
  };
  const addGrains = true;
  var shoppingList = {
    if (bananas > 0) 'bananas': bananas,
    if (apples > 0) 'apples': apples,
    if (addGrains) ...grains
  };
  print(shoppingList);
}
/*

! Changes Made:

Replaced separate if statements with conditional expressions:

The original code used individual if statements to check the
conditions and add items to the shoppingList map. In the updated code,
we leverage conditional expressions within the map declaration itself.
* By doing so, we eliminate the need for explicit if statements, reducing
* redundancy and improving code readability.
* Utilized spread operator for adding grains:

* In the original code, the addAll() method was used to add the grains map
 to the shoppingList if addGrains was true.
* In the updated code, we leverage the spread operator (...) to directly add
the key-value pairs from grains to the shoppingList.
This change simplifies the code by removing the need for an extra method call,
resulting in a cleaner and more efficient solution.
Why These Changes Were Made:

Improved code readability and conciseness:

The updated code reduces the number of lines and eliminates the repetition caused
by multiple if statements, resulting in a more concise and readable implementation.
The conditional expressions within the map declaration clearly convey the logic
 of adding items based on certain conditions, making the code easier to understand.
Enhanced code efficiency and maintainability:

By utilizing the spread operator, we optimize the process of
 adding the grains map to the shoppingList.
This change improves code efficiency and reduces unnecessary method calls,
 enhancing performance and maintainability.
 */