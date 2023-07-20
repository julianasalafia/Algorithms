// Develop a program that reads the name of an employee, his/her salary, how many years he/she has been working
// at the company, and show his/her new salary, adjusted according to the following table:
// Up to 3 years at the company: 3% increase. Between 3 and 10 years: 12.5% increase. 10 years or more: 20% increase.

import 'dart:developer';
import 'dart:io';

enum ServiceTimeStatus { newbie, senior, veteran, error }

void main() {
  stdout.write('name: ');
  String name = stdin.readLineSync()!;

  stdout.write('salary: ');
  double salary = double.parse(stdin.readLineSync()!);

  stdout.write('service time: ');
  double serviceTime = double.parse(stdin.readLineSync()!);

  ServiceTimeStatus serviceTimeStatus = getServiceTimeStatus(serviceTime);
  printNewSalary(serviceTimeStatus, salary, name);
}

void printNewSalary(
    ServiceTimeStatus serviceTimeStatus, double salary, String name) {
  double? newSalary;

  switch (serviceTimeStatus) {
    case ServiceTimeStatus.newbie:
      double newbieSalary = calculateRaise(salary, 3.5);
      newSalary = newbieSalary;
      break;
    case ServiceTimeStatus.senior:
      double seniorSalary = calculateRaise(salary, 12.5);
      newSalary = seniorSalary;
      break;
    case ServiceTimeStatus.veteran:
      double seniorSalary = calculateRaise(salary, 20.0);
      newSalary = seniorSalary;
      break;
    case ServiceTimeStatus.error:
      print('ERROR.');
      break;
  }
  print(
      'Name: $name \nPercentage:  \nSalary: $salary \nNew salary: $newSalary');
}

ServiceTimeStatus getServiceTimeStatus(double serviceTime) {
  if (serviceTime >= 0 && serviceTime <= 3) {
    return ServiceTimeStatus.newbie;
  }

  if (serviceTime >= 4 && serviceTime <= 9) {
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
