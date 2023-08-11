/*
    57) Develop an application that reads the salary and gender of several employees. At the end,
    show the total amount paid to men and the total paid to women. The program will ask the user whether
    he wants to continue or not whenever he reads the data of an employee.
*/

import 'dart:io';

void main() {
  double sumMenSalary = 0.0;
  double sumWomenSalary = 0.0;

  stdout.write('Do you want to register [Y/N]? ');
  String answer = stdin.readLineSync()!.toLowerCase();

  while (answer == 'y') {
    stdout.write('salary: ');
    double salary = double.parse(stdin.readLineSync()!);

    stdout.write('sex [M/F]: ');
    String gender = stdin.readLineSync()!.toLowerCase();

    if (gender == 'm') {
      sumMenSalary += salary;
    }

    if (gender == 'f') {
      sumWomenSalary += salary;
    }

    stdout.write('do you want to register [y/n]: ');
    answer = stdin.readLineSync()!.toLowerCase();

    if (answer == 'n') {
      stdout.write('the sum of men\'s salaries is $sumMenSalary. \n');
      stdout.write('the sum of women\'s salaries is $sumWomenSalary.');
      return;
    }
  }
}
