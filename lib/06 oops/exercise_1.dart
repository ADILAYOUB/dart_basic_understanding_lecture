// Bank Account

class BankAccount {
  //2. task constructor
  BankAccount({this.balance = 0, required this.name});
  String name;
  double balance;
  // deposite
  void deposite(double depositeAmount) {
    balance += depositeAmount;
  }

  //withdraw
  bool withdraw(double withdrawAmount) {
    balance -= withdrawAmount;
    if (balance > withdrawAmount) {
      return true;
    }
    return false;
  }
}

// example of maned constructor
class Temperature {
  Temperature.celsius(this.celsius);
  Temperature.farenheit(double farenheit) : celsius = (farenheit - 32) / 1.8;
  double celsius;
  //double farenheit() => celsius * 1.8 + 32; // but this is not good to use

  // creating a getter
  double get farenheit => celsius * 1.8 + 32;
  // a getter veriable has to provide a body same as when we define a function
  // thus it can directly computed from the other veriables inside the class
  // Thus getters are also called computed veriables
  // where as reqular veriables are also called stored veriables

  // we can create a setter
  set farenheit(double farenheit) => celsius = (farenheit - 32) / 1.8;
}

void main() {
  //Named constructor example
  // instance
  final tempInCelsius = Temperature.celsius(10);
  print(tempInCelsius.celsius);

  // here we are not able to get the farenheit so to get it we can create a
  // function called farenheit.
  // now we can call the farenheit function as
  //print(Temperature.farenheit(35)); // this is haveing () but we want in same
  // way as tempInCelsius.celsius
  // for that we can create a getter
  tempInCelsius.celsius = 100;
  print(tempInCelsius.farenheit);

  tempInCelsius.farenheit = 90; // setter called (initilization)

  BankAccount bankAccount = BankAccount(name: 'Sameer', balance: 0.0);
  print(bankAccount.balance);
  bankAccount.deposite(100);
  print(bankAccount.balance);
  bankAccount.deposite(500);
  print(bankAccount.balance);
  print(
      "WithDraw success ${bankAccount.withdraw(200)} and your balance is: ${bankAccount.balance}");

  // for static veriables we don't have to create the instance of the class
  // as they are part of the class Thus
  // Static class veriables belongs to the class itself
  print(Strings.signIn);
  print(Strings.welcome);

  print(Strings.greet('Adil'));
}

// static veriable
class Strings {
  // static String welcome = 'Welcome';
  // static String signIn = 'SignIn';
  // we can create a static function
  static String greet(String name) => 'HI $name';

  //Remember 'const' is used for compile time constants.
  // the static looks same as compile time constants
  // thus we can do this
  static const welcome = 'Welcome';
  static const signIn = 'SignIn';
  // static used for veriables / methods that are specific to the class other
  // than instansis of that class
  // use static const to define a global const that belongs to the class

  // we can do
  void foo() {
    print(Strings.welcome); // not good way as we are inside this class so
    // use this only
    print(welcome);
  }
}
