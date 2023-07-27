/*
    44) Create an algorithm that reads the initial value of the count, the final value, and the increment, then shows all values in the range:
    Ex: Enter the first value: 3. Enter the last value: 10. Enter the increment: 2. Count: 3 5 7 9 Finished!
*/
import 'dart:io';

void main() {
  String answer = 'yes';
  while (answer == 'yes') {
    List<int> vector = [];
    int firstValue = readInt('first value: ');
    int lastValue = readInt('last value: ');
    int increment = readInt('increment: ');

    int counter = firstValue;

    if (firstValue > lastValue) {
      while (counter >= lastValue) {
        vector.add(counter);
        counter -= increment;
      }
    } else if (lastValue > firstValue) {
      while (counter <= lastValue) {
        vector.add(counter);
        counter += increment;
      }
    }

    for (int element in vector) {
      if (element != vector.last) {
        stdout.write('$element, ');
      } else {
        stdout.write('$element. ');
      }
    }

    print('finished!');

    stdout.write('Do you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
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
