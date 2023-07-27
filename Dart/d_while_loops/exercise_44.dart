/*
    44) Create an algorithm that reads the initial value of the count, the final value, and the increment, then shows all values in the range:
    Ex: Enter the first value: 3. Enter the last value: 10. Enter the increment: 2. Count: 3 5 7 9 Finished!
*/
import 'dart:io';

void main() {
  List<int> vector = [];
  int firstValue = readInt('first value: ');
  int lastValue = readInt('last value: ');
  int increment = readInt('increment: ');

  int counter = firstValue;

  while (counter <= lastValue) {
    vector.add(counter);
    counter += increment;
  }

  print(vector);
}

int readInt(String prompt) {
  int? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    if (value == null || value < 0) {
      print('Error: Please enter a valid number');
    }
  } while (value == null || value < 0);

  return value;
}
