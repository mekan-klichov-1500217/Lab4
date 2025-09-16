// Define the mixin
mixin Flyer {
  void fly() {
    print("Taking off!");
  }
}

class Bird with Flyer {
  String name;
  Bird(this.name);
}

class Plane with Flyer {
  String name;
  Plane(this.name);
}

void main() {
  Bird bird = Bird("Eagle");
  Plane plane = Plane("SU-57");
  bird.fly();
  plane.fly();
}
