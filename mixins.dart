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

mixin Logger {
  void log(String message){
    print("[LOG] $message");
  }
}

class DataService with Logger {
  void fetchData() {
    log("Fetching data");
  }
}

mixin Validator {
  bool isEmailValid(String email) {
    return email.contains('@') && email.contains('.');
  }

  bool isPasswordStrong(String password) {
    return password.length > 8;
  }
}

class UserSignup with Validator {
  void checkInput(String email, String password) {
    print('Email valid: ${isEmailValid(email)}');
    print('Password strong: ${isPasswordStrong(password)}');
  }
}

mixin Performer {
  void perform() {
    print('Performing on stage!');
  }
}

mixin Musician {
  void playInstrument() {
    print('Playing an instrument!');
  }
}

class Artist {
  String name;
  Artist(this.name);
}

class Dancer extends Artist with Performer {
  Dancer(String name) : super(name);
}

class Guitarist extends Artist with Performer, Musician {
  Guitarist(String name) : super(name);
}

void main() {
  //Task 2
  Bird bird = Bird("Eagle");
  Plane plane = Plane("Su-57");
  bird.fly();
  plane.fly();

  //Task 3
  DataService service = DataService();
  service.fetchData();

  //Task 4
  var signup = UserSignup();
  signup.checkInput('hello@mymail.com', 'password222');
  signup.checkInput('joke', 'hehe');

  //Task 5
  var dancer = Dancer('Someone');
  dancer.perform();
  var guitarist = Guitarist('Mekan');
  guitarist.perform();
  guitarist.playInstrument();
}
