/*
    Create an algorithm that reads a student's name and two grades, calculates their average and displays it on the screen.
    Finally, analyze the average and show whether or not the student had good performance (if it was above the average of 7.0).
 */

import 'dart:io';

void main() {
  stdout.write('name: ');
  String name = stdin.readLineSync()!;

  stdout.write('G1: ');
  double grade1 = double.parse(stdin.readLineSync()!);

  stdout.write('G2: ');
  double grade2 = double.parse(stdin.readLineSync()!);

  gpaCalculate(grade1, grade2, name);
}

void gpaCalculate(double grade1, double grade2, String name) {
  double gpa = (grade1 + grade2) / 2;

  if (gpa >= 7.0) {
    print('The student $name did well. Average: $gpa');
  } else {
    print('The student $name did not do well. Average: $gpa');
  }
}
