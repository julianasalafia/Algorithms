// Create an algorithm that reads an employee's salary, calculates and shows their new salary with a 15% increase.

import 'dart:io';

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    String name = readString('name: ');
    double salary = readDouble('salary: ');
    double percentage = readDouble('raise (%): ');

    calculateSalary(name, percentage, salary);
    answer = readString('do you want to try again? ').toLowerCase();
  }
}

void calculateSalary(String name, double percentage, double salary) {
  if (name.contains(RegExp(r'\d'))) {
    print('Error: Name must be a valid name');
    return;
  }

  if (salary < 0) {
    print('Error: Salary must be a positive number');
    return;
  }

  if (percentage < 0 || percentage > 100) {
    print('Error: Percentage must be between 0 and 100');
    return;
  }

  double percentageConversion = percentage / 100;
  double raiseAmount = salary * percentageConversion;

  double newSalary = salary + raiseAmount;
  print(
      'Employee: $name; Initial Salary: U\$${salary.toStringAsFixed(2)}; Raise Amount: U\$${raiseAmount.toStringAsFixed(2)}; Updated Salary: U\$${newSalary.toStringAsFixed(2)}.');
}

double readDouble(String prompt) {
  double? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = double.tryParse(input!);
    if (value == null) {
      print('Error: Please enter a valid number');
    }
  } while (value == null);

  return value;
}

String readString(String prompt) {
  String? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = input!;
    if (value.isEmpty) {
      print('Error: Please enter a valid non-empty string');
    }
  } while (value.isEmpty);

  return value;
}
