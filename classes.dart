class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);

  void displayInfo() {
    print("Book information: $title $author $numberOfPages");
  }
}

class Student {
  String name;
  int age;
  List<double> grades;

  Student(this.name, this.age, this.grades);

  double calculateAverageGrade() {
    double sum = 0;
    for (var g in grades) {
      sum += g;
    }
    return grades.isEmpty ? 0 : sum / grades.length;
  }
}

class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposited \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Deposit amount must be positive.");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdrawal amount must be positive.");
    } else if (amount > balance) {
      print("Error! Not enough balance to withdraw \$${amount.toStringAsFixed(2)}");
    } else {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}");
    }
  }
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double get area => width * height;
  double get perimeter => 2 * (width + height);
}

void main() {
  //Task 2
  var myBook = Book("Rich dad, poor dad", "Robert Kiyosaki", 300);
  myBook.displayInfo();

  //Task 3
  Student s = Student("Mekan", 21, [90.5, 80.0, 95.5]);
  print("Average grade for ${s.name}: ${s.calculateAverageGrade()}");

  //Task 4
  BankAccount acc = BankAccount("123456", "Mekan Klichov", 100.0);
  print("Initial balance: \$${acc.balance.toStringAsFixed(2)}");

  acc.deposit(50);      //normal deposit
  acc.withdraw(30);     //normal withdrawal
  acc.withdraw(200);    //attempt to withdraw more than balance
  acc.deposit(-10);     //invalid deposit
  acc.withdraw(0);      //invalid withdrawal

  //Task 5
  Rectangle rect = Rectangle(5.0, 3.0);
  print("Width: ${rect.width}, Height: ${rect.height}");
  print("Area: ${rect.area}");
  print("Perimeter: ${rect.perimeter}");
}