// Develop a program that reads the name of an employee, his/her salary, how many years he/she has been working
// at the company, and show his/her new salary, adjusted according to the following table:
// Up to 3 years at the company: 3% increase. Between 3 and 10 years: 12.5% increase. 10 years or more: 20% increase.

import 'dart:io';

void main() {
  stdout.write('name: ');
  String name = stdin.readLineSync()!;

  stdout.write('salary: ');
  double salary = double.parse(stdin.readLineSync()!);

  stdout.write('service time: ');
  double serviceTime = double.parse(stdin.readLineSync()!);

  if (serviceTime >= 0 && serviceTime <= 3) {
    calculateRaise(salary, 3.5);
  }

  if (serviceTime >= 4 && serviceTime <= 9) {
    calculateRaise(salary, 12.5);
  }

  if (serviceTime >= 10) {
    calculateRaise(salary, 20);
  }
}

double calculateRaise(double salary, double percentage) {
  double newSalary = salary + ((percentage * salary) / 100);
  return newSalary;
}
