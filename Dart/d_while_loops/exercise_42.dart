// 42) Make an algorithm that asks the user for any positive integer and displays a count up to that value:
// Ex: Enter a value: 35. Count: 1 2 3 4 5 6 7 … 33 34 35 Finished!

import 'dart:io';

void main() {
  List<int> vector = [];

  int maxSize = readInt('number: ');
  int counter = 1;

  while (counter <= maxSize) {
    vector.add(counter);
    counter++;
  }

  for (int element in vector) {
    if (element < maxSize) {
      stdout.write('$element, ');
    } else {
      stdout.write('$element. ');
    }
  }

  print('finished!');
}

int readInt(String prompt) {
  int? value;

  while (value == null || value < 0) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    print('Error: Please enter a valid number.');
  }

  return value;
}
