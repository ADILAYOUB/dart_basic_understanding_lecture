void main() {
  const list = [1, 2, 3, 4, 5];
  final result = list.reduce((value, element) => value + element);
  // value  :  1 3 6 10 15
  // element : 2 3 4 5
  print(result);

  emailDomain([
    'adil@gmail.com',
    'khan@yahoo.com',
    'bhat@outlook.com',
    'name@email.com',
    'mail@gmail.com',
    'mail@mail.com',
    'web@outlook.com'
  ]);
}

//! Reduce Mehtod combine all items inside a list and produce a single result

void emailDomain(List<String> emails) {
  const acceptedEmailDomain = ['gmail.com', 'yahoo.com', 'outlook.com'];
  final unKnowmDomain = emails
      .map((e) => e.split('@').last)
      .where((domain) => !acceptedEmailDomain.contains(domain));
  print(unKnowmDomain);

  //if we use for loop inested of mao and where function
  const acceptedDomain = ['gmail.com', 'yahoo.com', 'outlook.com'];

  var result = <String>[];
  for (var value in emails) {
    final domain = value.split('@').last;
    if (!acceptedDomain.contains(domain)) {
      result.add(domain);
    }
  }
  print(result);
}
