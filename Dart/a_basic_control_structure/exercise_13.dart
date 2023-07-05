// Create an algorithm that reads an employee's salary, calculates and shows their new salary with a 15% increase.

import 'dart:io';

void main() {
  stdout.write('name: ');
  String name = stdin.readLineSync()!;

  stdout.write('salary: ');
  double salary = double.parse(stdin.readLineSync()!);

  stdout.write('raise (%): ');
  double percentage = double.parse(stdin.readLineSync()!);

  double percentageConversion = percentage / 100;
  double raiseAmount = salary * percentageConversion;
  double newSalary = salary + raiseAmount;

  print(newSalary);
}
