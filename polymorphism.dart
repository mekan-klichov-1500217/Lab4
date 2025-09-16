import 'dart:convert';

class Weapon {
  void action() {
    print('Weapon action');
  }
}

class Sword extends Weapon {
  @override
  void action() {
    print('Swinging!');
  }
}

class Bow extends Weapon {
  @override
  void action() {
    print('Firing!');
  }
}

class Animal {
  void eat() {
    print('Animal is eating');
  }
}

class Lion extends Animal {
  @override
  void eat() {
    print('Eating meat.');
  }
}

class Goat extends Animal {
  @override
  void eat() {
    print('Eating grass.');
  }
}

void feed(Animal animal) {
  animal.eat();
}

abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard extends PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid ${amount} with Credit Card.');
  }
}

class PayPal extends PaymentMethod {
  @override
  void pay(double amount) {
    print('Paid ${amount} with PayPal.');
  }
}

void processPayment(PaymentMethod method, double amount) {
  method.pay(amount);
}

abstract class DataFormatter {
  String format(Map<String, dynamic> data);
}

class JSONFormatter extends DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    return jsonEncode(data);
  }
}

class KeyValueFormatter extends DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    var lines = '';
    data.forEach((k, v) {
      lines += '$k: $v\n';
    });
    return lines;
  }
}

void main() {
  //Task 2
  var weapons = <Weapon>[Sword(), Bow()];
  for (var w in weapons) {
    w.action();
  }

  //Task 3
  var lion = Lion();
  var goat = Goat();
  feed(lion);
  feed(goat);

  //Task 4
  var card = CreditCard();
  var paypal = PayPal();
  processPayment(card, 100.0);
  processPayment(paypal, 50.0);

  //Task 5
  var sampleData = {
    'name': 'Mekan',
    'age': 21,
    'city': 'Beruniy',
  };

  var formatters = <DataFormatter>[
    JSONFormatter(),
    KeyValueFormatter(),
  ];

  for (var f in formatters) {
    print('--- ${f.runtimeType} ---');
    print(f.format(sampleData));
  }
}