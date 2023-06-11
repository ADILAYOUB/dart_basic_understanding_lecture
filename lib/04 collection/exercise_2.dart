/*
    ## Exercise Pizza Ordering 

    given the following map of pizza prices;

    const pizzaPrices = {
      'margherita': 5.5,
      'pepperoni': 7.5,
      'vegetarian': 6.5,
    };

    write a program to calculate the total for a given order.
    for example given the following order:

    const order = ['margherita','pepperoni'];

    The program should print "Total: $13";

    note: if a pizza is not on the menu, the program should print sometimes like 
    this:

    > pineapple pizza is not in the menu;



   */

void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = ['margherita', 'pepperoni', 'pineapple'];
  var total = 0.0;
  for (var value in order) {
    final price = pizzaPrices[value];
    if (price != null) {
      total += price;
    } else {
      print('$value Pizza is not in the menu');
    }
  }
  print('Total: \$$total');
}
