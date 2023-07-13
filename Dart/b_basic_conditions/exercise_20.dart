// Develop a program that reads an integer and shows whether it is EVEN or ODD.

import 'dart:io';

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    print('ODD OR EVEN');
    print('----------------------------');

    int number = readInt('Number: ');

    oddOrEven(number);

    answer = readString('Do you want to try again? ').toLowerCase();
  }
}

void oddOrEven(int number) {
  switch (number % 2) {
    case 0:
      print('it\'s even!');
      break;
    default:
      print('it\'s odd!');
      break;
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

String readString(String prompt) {
  String? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = input!;

    if (value == null) {
      print('Error: Please enter a valid string');
    }
  } while (value == null);

  return value;
}
