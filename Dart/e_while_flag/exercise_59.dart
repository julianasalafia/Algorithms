/*
    59) Create a program that reads the gender and age of several people.
    The program will ask the user whether he wants to continue or not for each person. At the end, show:
    a) what is the highest age read b) how many men were registered
    c) what is the age of the youngest woman d) what is the average age among men
*/

import 'dart:io';

void main() {
  Map<String, dynamic> person = registerUsers();
  displayResults(person);
}

String getUserInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync()!.toLowerCase();
}

Map<String, dynamic> registerUsers() {
  List<String> genders = [];
  List<int> ages = [];
  int highestAge = 0;

  String answer = getUserInput('Do you want to register a new user [Y/N]? ');
  int? age;
  int registeredMen = 0;

  while (answer == 'y') {
    stdout.write('gender [M/F]: ');
    String input = stdin.readLineSync()!.toUpperCase();

    while (input != 'M' && input != 'F') {
      stdout.write('Invalid input. Gender [M/F]: ');
      input = stdin.readLineSync()!.toUpperCase();
    }

    if (input == 'M') {
      registeredMen++;
    }

    genders.add(input);

    stdout.write('age: ');
    input = stdin.readLineSync()!;

    age = int.tryParse(input);

    while (age == null || age < 0) {
      stdout.write('Invalid age. Age: ');
      input = stdin.readLineSync()!;
      age = int.tryParse(input);
    }

    ages.add(age);

    if (age > highestAge) {
      highestAge = age;
    }

    answer = getUserInput('Do you want to register a new user [Y/N]? ');
  }

  return {
    'genders': genders,
    'ages': ages,
    'highestAge': highestAge,
    'registeredMen': registeredMen
  };
}

void displayResults(Map<String, dynamic> person) {
  if (person['genders'].isEmpty && person['ages'].isEmpty) {
    stdout.write('No users registered.');
    return;
  }

  stdout.write(
      'The highest age read was ${person['highestAge']}. \nThere are ${person['registeredMen']} men registered. \n ');
}
