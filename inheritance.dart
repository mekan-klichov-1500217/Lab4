class Animal {
  void makeSound() {
    print("Animal sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

class Shape {
  String color;
  Shape(this.color);
}

class Circle extends Shape {
  double radius;
  Circle(String color, this.radius) : super(color);
}

class Square extends Shape {
  double sideLength;
  Square(String color, this.sideLength) : super(color);
}

class Employee {
  String name;
  double baseSalary;

  Employee(this.name, this.baseSalary);

  double calculateSalary() {
    return baseSalary;
  }
}

class Manager extends Employee {
  double bonus;

  Manager(String name, double baseSalary, this.bonus) : super(name, baseSalary);

  @override
  double calculateSalary() {
    return baseSalary + bonus;
  }
}

class LibraryItem {
  String title;
  int id;

  LibraryItem(this.title, this.id);

  String getDetails() {
    return "Title: $title, ID: $id";
  }
}

class Book extends LibraryItem {
  String author;

  Book(String title, int id, this.author) : super(title, id);

  @override
  String getDetails() {
    return "Book - Title: $title, ID: $id, Author: $author";
  }
}

class DVD extends LibraryItem {
  String director;

  DVD(String title, int id, this.director) : super(title, id);

  @override
  String getDetails() {
    return "DVD - Title: $title, ID: $id, Director: $director";
  }
}

void main() {
  //Task 2
  Dog dog = Dog();
  Cat cat = Cat();
  dog.makeSound();
  cat.makeSound();

  //Task 3
  Circle c = Circle("red", 5.0);
  Square s = Square("blue", 3.5);
  print("Circle: color=${c.color}, radius=${c.radius}");
  print("Square: color=${s.color}, sideLength=${s.sideLength}");

  //Task 4
  Employee e = Employee("Mekan", 3000);
  Manager m = Manager("Klichov", 4000, 1000);
  print("${e.name}'s salary: ${e.calculateSalary()}");
  print("${m.name}'s salary: ${m.calculateSalary()}");

  //Task 5
  Book b = Book("The Great Gatsby", 101, "F. Scott Fitzgerald");
  DVD d = DVD("Inception", 202, "Christopher Nolan");
  print(b.getDetails());
  print(d.getDetails());
}