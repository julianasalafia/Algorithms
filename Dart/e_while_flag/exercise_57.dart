/*
    57) Develop an application that reads the salary and gender of several employees. At the end,
    show the total amount paid to men and the total paid to women. The program will ask the user whether
    he wants to continue or not whenever he reads the data of an employee.
*/

import 'dart:io';

void main() {
  double sumMenSalary = 0.0;
  double sumWomenSalary = 0.0;

  String answer = readString('Do you want to register [Y/N]? ');

  while (answer == 'y') {
    double salary = readDouble('salary: ');
    String gender = readString('sex [M/F]: ');

    if (gender == 'm') {
      sumMenSalary = sumSalary(sumMenSalary, salary);
    }

    if (gender == 'f') {
      sumWomenSalary = sumSalary(sumWomenSalary, salary);
    }

    answer = readString('do you want to register [y/n]: ');

    if (answer == 'n') {
      return message(sumMenSalary, sumWomenSalary);
    }
  }
}

double sumSalary(double sumSalary, double salary) {
  sumSalary += salary;
  return sumSalary;
}

void message(double sumMenSalary, double sumWomenSalary) {
  stdout.write(
      'the sum of men\'s salaries is $sumMenSalary. \nthe sum of women\'s salaries is $sumWomenSalary.');
}

String readString(String prompt) {
  String? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = input!;

    if (value == null || !value.contains(RegExp(r'^[a-zA-Z\s]+$'))) {
      print('Error: Please enter a valid name.');
    }
  } while (value == null || !value.contains(RegExp(r'^[a-zA-Z\s]+$')));

  return value;
}

double readDouble(String prompt) {
  double? value;

  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = double.tryParse(input!);

    if (value != null && value >= 0) {
      return value;
    } else {
      print('Error: Please enter a valid number.');
    }
  }
}
