// Write an algorithm that reads two integers and compares them, showing on the screen one of the messages below:
// The first value is greater. The second value is greater. There is no greater value, they are equal.

import 'dart:io';

enum NumberStatus { greaterThan, lessThan, equal, error }

void main() {
  int number1 = readInt('number 1: ');
  int number2 = readInt('number 2: ');

  NumberStatus status = getNumberStatus(number1, number2);

  switch (status) {
    case NumberStatus.greaterThan:
      print('$number1 is greater than $number2');
      break;
    case NumberStatus.lessThan:
      print('$number1 is less than $number2');
      break;
    case NumberStatus.equal:
      print('$number1 is equal to $number2');
      break;
    case NumberStatus.error:
      print('Error: NaN');
      break;
  }
}

NumberStatus getNumberStatus(int number1, int number2) {
  if (number1 > number2) {
    return NumberStatus.greaterThan;
  } else if (number1 < number2) {
    return NumberStatus.lessThan;
  } else if (number1 == number2) {
    return NumberStatus.equal;
  } else {
    return NumberStatus.error;
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
