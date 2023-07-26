/*
    A company needs to adjust the salaries of its employees, giving them a raise based on some factors. Write a program
    that reads the employee's current salary, gender, and how many years they have been working for the company.
    At the end, show their new salary, based on the following table:
    Women: Less than 15 years in the company: +5%. From 15 to 20 years in the company: +12%. More than 20 years in the company: +23%.
    Men: Less than 20 years in the company: +3%. From 20 to 30 years in the company: +13%. More than 30 years in the company: +25%.
 */

import 'dart:io';

enum GenderStatus { MALE, FEMALE }

void main() {
  String answer = 'yes';
  while (answer == 'yes') {
    double currentSalary = readDouble('current salary: ');
    double yearsWorking = readDouble('years working at company: ');
    late GenderStatus? gender;

    do {
      double chosenGender = readDouble('\nGender: \n1) Female \n2) Male \n:: ');
      gender = setGender(chosenGender);
    } while (gender == null);

    double? times = setSalaryProperties(gender, yearsWorking);
    double newSalary = calculateTime(yearsWorking, currentSalary, times!);
    printNewSalary(currentSalary, newSalary, gender);

    stdout.write('\ndo you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
}

void printNewSalary(
    double currentSalary, double newSalary, GenderStatus gender) {
  return print(
      'gender: ${gender.toString().split('.').last} \ncurrent salary: U\$${currentSalary.toStringAsFixed(2)} \nnew salary: U\$${newSalary.toStringAsFixed(2)}');
}

double calculateTime(double yearsWorking, double currentSalary, double times) {
  return currentSalary + ((currentSalary * times) / 100);
}

double? setSalaryProperties(GenderStatus gender, double yearsWorking) {
  double? salaryIncreasePercentage;

  switch (gender) {
    case GenderStatus.FEMALE:
      if (yearsWorking < 15) {
        return salaryIncreasePercentage = 5;
      } else if (yearsWorking >= 15 && yearsWorking < 20) {
        return salaryIncreasePercentage = 12;
      } else if (yearsWorking >= 20) {
        return salaryIncreasePercentage = 23;
      }
      break;

    case GenderStatus.MALE:
      if (yearsWorking < 20) {
        return salaryIncreasePercentage = 3;
      } else if (yearsWorking >= 20 && yearsWorking < 30) {
        return salaryIncreasePercentage = 13;
      } else if (yearsWorking >= 30) {
        return salaryIncreasePercentage = 25;
      }
      break;
  }
  return salaryIncreasePercentage;
}

GenderStatus? setGender(double chosenGender) {
  GenderStatus? gender;
  switch (chosenGender) {
    case 1:
      gender = GenderStatus.FEMALE;
      break;
    case 2:
      gender = GenderStatus.MALE;
      break;
    default:
      return null;
  }
  return gender;
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
