// Develop a program that reads the name of an employee, his/her salary, how many years he/she has been working
// at the company, and show his/her new salary, adjusted according to the following table:
// Up to 3 years at the company: 3% increase. Between 3 and 10 years: 12.5% increase. 10 years or more: 20% increase.

import 'dart:io';

enum ServiceTimeStatus { newbie, senior, veteran, error }

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    String name = readString('name: ').capitalize();
    double salary = readDouble('salary: ');
    double serviceTime = readDouble('service time: ');

    ServiceTimeStatus serviceTimeStatus = getServiceTimeStatus(serviceTime);
    printNewSalary(serviceTimeStatus, salary, name);

    answer = readString('do you want to try again? ').toLowerCase();
  }
}

void printNewSalary(
    ServiceTimeStatus serviceTimeStatus, double salary, String name) {
  double? newSalary;
  double? percentage;

  double newbiePercentage = 3;
  double seniorPercentage = 12.5;
  double veteranPercentage = 20;

  switch (serviceTimeStatus) {
    case ServiceTimeStatus.newbie:
      percentage = newbiePercentage;
      double newbieSalary = calculateRaise(salary, percentage);
      newSalary = newbieSalary;
      break;
    case ServiceTimeStatus.senior:
      percentage = seniorPercentage;
      double seniorSalary = calculateRaise(salary, percentage);
      newSalary = seniorSalary;
      break;
    case ServiceTimeStatus.veteran:
      percentage = veteranPercentage;
      double veteranSalary = calculateRaise(salary, percentage);
      newSalary = veteranSalary;
      break;
    case ServiceTimeStatus.error:
      print('ERROR.');
      break;
  }
  print(
      'Name: $name — Percentage: $percentage% — Salary: US\$${salary.toStringAsFixed(2)} — New salary: US\$${newSalary?.toStringAsFixed(2)}');
}

ServiceTimeStatus getServiceTimeStatus(double serviceTime) {
  if (serviceTime >= 0 && serviceTime <= 3) {
    return ServiceTimeStatus.newbie;
  }

  if (serviceTime > 3 && serviceTime < 10) {
    return ServiceTimeStatus.senior;
  }

  if (serviceTime >= 10) {
    return ServiceTimeStatus.veteran;
  }
  return ServiceTimeStatus.error;
}

double calculateRaise(double salary, double percentage) {
  double newSalary = salary + ((percentage * salary) / 100);
  return newSalary;
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

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
