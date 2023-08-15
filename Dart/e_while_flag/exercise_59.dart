/*
    59) Create a program that reads the gender and age of several people.
    The program will ask the user whether he wants to continue or not for each person. At the end, show:
    a) what is the highest age read b) how many men were registered
    c) what is the age of the youngest woman d) what is the average age among men
*/

import 'dart:io';

void main() {
  Map<String, dynamic> person = registerUsers();
  print('data: $person');
}

String getUserInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync()!.toLowerCase();
}

Map<String, dynamic> registerUsers() {
  List<String> genders = [];
  List<int> ages = [];

  String answer = 'y';
  int age;

  while (answer == 'y') {
    stdout.write('gender: ');
    String? input = stdin.readLineSync();

    genders.add(input!);

    stdout.write('age: ');
    input = stdin.readLineSync();

    age = int.parse(input!);
    ages.add(age);
    answer = getUserInput('Do you want to register someone? [Y/N]? ');
  }

  return {
    'genders': genders,
    'ages': ages,
  };
}
