// Create a program that reads the number of days worked in a month and shows the salary of an employee,
// knowing that this person works 8 hours per day and earns R$25 per hour worked.

import 'dart:io';

const int hoursPerDay = 8;
const double hourlyRate = 25.0;

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    try {
      stdout.write('days worked in a month: ');
      int? daysWorked = int.tryParse(stdin.readLineSync()!);

      calculateSalary(daysWorked!);

      stdout.write('do you want to try again? ');
      answer = stdin.readLineSync()!.toLowerCase();
    } catch (e) {
      print('Error: Please enter a valid number');
    }
  }
}

void calculateSalary(int daysWorked) {
  double salary = hoursPerDay * hourlyRate * daysWorked;
  print('The employee salary is U\$${salary.toStringAsFixed(2)}.');
}
