/*
    Write a program that reads a guy's birth year and shows his situation in relation to military enlistment.
    If it is before 18 years old, show how many years are left until enlistment
    If already after 18 years old, show how many years have passed since enlistment
*/

import 'dart:io';

const currentYear = 2023;

enum EnlistmentStatus { underage, legalAge, enlistmentAge, error }

void main() {
  militaryAge(currentYear);
}

void militaryAge(int currentYear) {
  int enlistmentYears;
  String answer = 'yes';

  do {
    int birthYear = readInt('Birth year: ');
    int age = currentYear - birthYear;
    EnlistmentStatus status = getEnlistmentStatus(age);

    switch (status) {
      case EnlistmentStatus.underage:
        enlistmentYears = 18 - age;
        print(
            'Underage. You will be drafted into the military in $enlistmentYears years.');
        break;
      case EnlistmentStatus.legalAge:
        enlistmentYears = age - 18;
        print(
            'Legal age. You missed the military enlistment by $enlistmentYears years.');
        break;
      case EnlistmentStatus.enlistmentAge:
        print('You are at the age of enlistment.');
        break;
      case EnlistmentStatus.error:
        stdout.write('Error: Wrong birth date. ');
        break;
    }
    stdout.write('Do you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  } while (answer == 'yes');
}

EnlistmentStatus getEnlistmentStatus(int age) {
  if (age < 18 && age > 0) {
    return EnlistmentStatus.underage;
  } else if (age > 18 && age < 100) {
    return EnlistmentStatus.legalAge;
  } else if (age == 18) {
    return EnlistmentStatus.enlistmentAge;
  } else {
    return EnlistmentStatus.error;
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
