/*
    Create an algorithm that reads a student's name and two grades, calculates their average and displays it on the screen.
    Finally, analyze the average and show whether or not the student had good performance (if it was above the average of 7.0).
 */

import 'dart:io';

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    String name = readString('name: ');
    double grade1 = readDouble('G1: ');
    double grade2 = readDouble('G2: ');

    gpaCalculate(grade1, grade2, name);

    answer = readString('do you want to try again? ').toLowerCase();
  }
}

void gpaCalculate(double grade1, double grade2, String name) {
  double gpa = (grade1 + grade2) / 2;

  if (gpa >= 7.0) {
    print('The student $name did well. Average: $gpa.');
  } else {
    print('The student $name did not do well. Average: $gpa.');
  }
}

double readDouble(String prompt) {
  double? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = double.tryParse(input!);

    if (value == null || value < 0 || value > 10) {
      print('Error: Please enter a valid number');
    }
  } while (value == null || value < 0 || value > 10);

  return value;
}

String readString(String prompt) {
  String? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = input!;

    if (value == null || !value.contains(RegExp(r'^[a-zA-Z\s]+$'))) {
      print('Error: Please enter a valid string');
    }
  } while (value == null || !value.contains(RegExp(r'^[a-zA-Z\s]+$')));

  return value;
}
