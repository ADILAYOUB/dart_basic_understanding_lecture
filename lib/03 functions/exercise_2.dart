/*
  ## Pizza ordering with function 
  The following program can be used to calculate the total price when ordering 
  pizza;

    void main(){
      const pizzaPrices = {
      'margherita': 5.5,
      'pepperoni': 7.5,
      'vegetarian': 6.5,
      };

      const order = ['margherita','pepperoni' ,'vegetarian' ];
      var total = 0.0;
      for (var item in order){
        final price = pizzaPrices[item];
        if(price != null){
          total += price;
        }
      }
      print('Total: \$$total');
    }
 */

void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = ['margherita', 'pepperoni', 'vegetarian'];
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    }
  }
  print('Total: \$$total');
}
