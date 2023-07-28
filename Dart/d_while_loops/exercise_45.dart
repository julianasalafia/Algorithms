// 45) The above program will have a problem when we enter the first value greater than the last.
// Solve this problem with code that works in any situation.

import 'dart:io';

void main() {
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
}

int readInt(String prompt) {
  int? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    if (value == null) {
      print('Error: Please enter a valid number');
    }
  } while (value == null);

  return value;
}
