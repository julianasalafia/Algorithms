/*
    A company needs to adjust the salaries of its employees, giving them a raise based on some factors. Write a program
    that reads the employee's current salary, gender, and how many years they have been working for the company.
    At the end, show their new salary, based on the following table:
    Women: Less than 15 years in the company: +5%. From 15 to 20 years in the company: +12%. More than 20 years in the company: +23%.
    Men: Less than 20 years in the company: +3%. From 20 to 30 years in the company: +13%. More than 30 years in the company: +25%.
 */

import 'dart:io';

void main() {
  double currentSalary = readDouble('current salary: ');
  double yearsWorking = readDouble('years working at company: ');
  double genderChosen = readDouble('Gender: \n1) Female \n2) Male \n::');

  late String gender;

  double newSalary = currentSalary;

  if (genderChosen == 1) {
    gender = 'female';

    if (yearsWorking < 15) {
      newSalary = currentSalary + ((currentSalary * 5) / 100);
    } else if (yearsWorking >= 15.0 && yearsWorking <= 20.0) {
      newSalary = currentSalary + ((currentSalary * 12) / 100);
    } else if (yearsWorking >= 20) {
      newSalary = currentSalary + ((currentSalary * 23) / 100);
    } else {
      print('Invalid.');
    }
  }

  if (genderChosen == 2) {
    gender = 'male';

    if (yearsWorking < 20) {
      newSalary = currentSalary + ((currentSalary * 3) / 100);
    } else if (yearsWorking >= 20.0 && yearsWorking <= 30.0) {
      newSalary = currentSalary + ((currentSalary * 13) / 100);
    } else if (yearsWorking >= 30) {
      newSalary = currentSalary + ((currentSalary * 25) / 100);
    } else {
      print('Invalid.');
    }
  }

  return print(
      'Current salary: U\$$currentSalary \nGender: $gender \nNew salary: U\$$newSalary');
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
