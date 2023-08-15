/*
    59) Create a program that reads the gender and age of several people.
    The program will ask the user whether he wants to continue or not for each person. At the end, show:
    a) what is the highest age read b) how many men were registered
    c) what is the age of the youngest woman d) what is the average age among men
*/

import 'dart:io';

void main() {
  List<int> ages = registerUsers();
  print('ages: $ages');
}

String getUserInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync()!.toLowerCase();
}

List<int> registerUsers() {
  List<int> ages = [];
  String answer = 'y';

  while (answer == 'y') {
    stdout.write('age: ');
    String? input = stdin.readLineSync();

    int age;

    age = int.parse(input!);
    ages.add(age);
    answer = getUserInput('Do you want to register someone? [Y/N]? ');
  }

  return ages;
}
