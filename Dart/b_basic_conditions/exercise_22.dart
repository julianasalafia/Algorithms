/*
    Write a program that reads a guy's birth year and shows his situation in relation to military enlistment.
    If it is before 18 years old, show how many years are left until enlistment
    If already after 18 years old, show how many years have passed since enlistment
*/

import 'dart:io';

const currentYear = 2023;

void main() {
  militaryAge(currentYear);
}

void militaryAge(int currentYear) {
  int enlistmentYears;
  String answer = 'yes';

  while (answer == 'yes') {
    int birthYear = readInt('Birth year: ');

    int age = currentYear - birthYear;

    if (age < 18 && age > 0) {
      enlistmentYears = 18 - age;
      print(
          'Underage. You will be drafted into the military in $enlistmentYears years.');
    } else if (age > 18 && age < 100) {
      enlistmentYears = age - 18;
      print(
          'Legal age. You missed the military enlistment by $enlistmentYears years.');
    } else if (age < 0 || age > 100) {
      stdout.write('Error: Please, try again. ');
    } else {
      print('You are at the age of enlistment.');
    }

    stdout.write('Do you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
}

int readInt(String prompt) {
  int? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    if (value == null || value < 0) {
      print('Error: Please enter a valid number');
    }
  } while (value == null || value < 0);

  return value;
}
