/*
    60) Develop an algorithm that reads the name, age and gender of several people.
    The program will ask the user whether he wants to continue or not. At the end, show:
    a) the name of the oldest person b) the name of the youngest woman
    c) the average age of the group d) how many men are over 30 years old
    e) how many women are under 18 years old
*/

import 'dart:io';

void main() {
  String name = getUserInput('name: ');
  int age = validateAgeInput();
  String gender = validateGenderInput();
}

String getUserInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync()!.toLowerCase();
}

int validateAgeInput() {
  int? age;
  do {
    stdout.write('age: ');
    age = int.tryParse(stdin.readLineSync()!);
  } while (age == null || age < 0);
  return age;
}

String validateGenderInput() {
  String gender;
  do {
    stdout.write('gender [M/F]: ');
    gender = stdin.readLineSync()!.toUpperCase();
  } while (gender != 'M' && gender != 'F');
  return gender;
}
