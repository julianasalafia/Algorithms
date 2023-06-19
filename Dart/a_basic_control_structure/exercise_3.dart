// Create a program that reads an employee's name and salary and displays a message at the end.

import 'dart:io';

void main() {
  double? salary;

  stdout.write("what's your name? ");
  String name = stdin.readLineSync()!;

  stdout.write("what's your salary? ");
  while (salary == null) {
    String? input = stdin.readLineSync();

    if (input != null) {
      try {
        salary = double.parse(input);
      } catch (exception) {
        print("please, enter a valid number.");
      }
    }
  }
  String _salary = salary.toStringAsFixed(2);

  print("the employee $name has a salary of US$_salary.");
}
