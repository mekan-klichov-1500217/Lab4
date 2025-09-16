enum OrderStatus {
  pending,
  processing,
  shipped,
  delievered,
  cancelled
}

enum TrafficLight {
  red,
  yellow,
  green;

  int get durationInSeconds {
    switch (this) {
      case TrafficLight.red:
        return 30;
      case TrafficLight.yellow:
        return 5;
      case TrafficLight.green:
        return 45;
    }
  }
}

String trafficAction(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      return "Stop";
    case TrafficLight.yellow:
      return "Caution";
    case TrafficLight.green:
      return "Go";
  }
}

enum UserRole { admin, editor, guest }

class User {
  String name;
  UserRole role;

  User(this.name, this.role);

  bool hasEditPermission() {
    return role == UserRole.admin || role == UserRole.editor;
  }
}

void main(){
  //Task 2
  OrderStatus status = OrderStatus.processing;
  print("$status");

  //Task 3
  print("Red: ${trafficAction(TrafficLight.red)}");
  print("Yellow: ${trafficAction(TrafficLight.yellow)}");
  print("Green: ${trafficAction(TrafficLight.green)}");

  //Task 4
  User u1 = User("Mekan", UserRole.admin);
  User u2 = User("Aziz", UserRole.editor);
  User u3 = User("Sherzod", UserRole.guest);

  print("${u1.name} can edit? ${u1.hasEditPermission()}");
  print("${u2.name} can edit? ${u2.hasEditPermission()}");
  print("${u3.name} can edit? ${u3.hasEditPermission()}");

  //Task 5
  for (var light in TrafficLight.values) {
    print("${light.name}: ${light.durationInSeconds} seconds");
  }
}