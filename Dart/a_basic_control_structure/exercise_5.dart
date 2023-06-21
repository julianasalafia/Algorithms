// Write a program that reads a student's two grades in a subject and displays their average on the screen.

import 'dart:io';

void main() {
  stdout.write('1st grade: ');
  double firstValue = double.parse(stdin.readLineSync()!);

  stdout.write('2nd grade: ');
  double secondValue = double.parse(stdin.readLineSync()!);

  averageGrade(firstValue, secondValue);
}

void averageGrade(double value1, double value2) {
  double average = (value1 + value2) / 2;
  print('The average grade between $value1 and $value2 is $average.');
}
