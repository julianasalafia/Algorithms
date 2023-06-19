// Develop an algorithm that reads two integers and displays the sum between them.

import 'dart:io';

void main() {
  stdout.write('1st value: ');
  int firstValue = int.parse(stdin.readLineSync()!);

  stdout.write('2nd value: ');
  int secondValue = int.parse(stdin.readLineSync()!);

  sum(firstValue, secondValue);
}

void sum(int firstValue, int secondValue) {
  int result = firstValue + secondValue;
  print('The sum between $firstValue and $secondValue is $result.');
}
