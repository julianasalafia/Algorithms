/*
    43) Develop an algorithm that displays a countdown from 30 to 1, marking the numbers that are divisible by 4, exactly as shown below:
    30 29 [28] 27 26 25 [24] 23 22 21 [20] 19 18 17 [16]…
*/

import 'dart:io';

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    List<int> vector = [];
    int minSize = 1;

    int counter = readInt('number: ');

    while (counter >= minSize) {
      vector.add(counter);
      counter--;
    }

    for (int element in vector) {
      if (element % 4 == 0) {
        stdout.write('[$element], ');
      } else if (element == minSize) {
        stdout.write('$element. ');
      } else {
        stdout.write('$element, ');
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
