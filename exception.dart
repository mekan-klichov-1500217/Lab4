void printElementAt(List list, int index) {
  try {
    print('Element at $index: ${list[index]}');
  } on RangeError {
    print('Error: Invalid index.');
  }
}

void parseAge(String input) {
  try {
    int age = int.parse(input);
    print('Age is $age');
  } on FormatException {
    print('Error: Please enter a valid number.');
  }
}

class InvalidInputException implements Exception {
  final String message;
  InvalidInputException(this.message);
}

void processText(String text) {
  if (text.isEmpty) {
    throw InvalidInputException('Input text cannot be empty.');
  }
  print('Processing text: $text');
}

void readDatabase() {
  try {
    print('Reading data from database...');
    print('Data read successfully.');
  } catch (e) {
    print('Error while reading data: $e');
  } finally {
    print('Database connection closed.');
  }
}

void main() {
  //Task 2
  printElementAt([10, 20, 30], 1);
  printElementAt([10, 20, 30], 5);

  //Task 3
  parseAge('25');
  parseAge('abc');

  //Task 4
  try {
    processText('');
  } on InvalidInputException catch (e) {
    print('Custom error: ${e.message}');
  }

  //Task 5
  readDatabase();
}