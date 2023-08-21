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

String validateGenderInput() {
  String gender;
  do {
    stdout.write('gender [M/F]: ');
    gender = stdin.readLineSync()!.toUpperCase();
  } while (gender != 'M' && gender != 'F');
  return gender;
}

int validateAgeInput() {
  int? age;
  do {
    stdout.write('age: ');
    age = int.tryParse(stdin.readLineSync()!);
  } while (age == null || age < 0);
  return age;
}

Map<String, dynamic> registerUsers() {
  List<String> genders = [];
  List<int> ages = [];
  int agesMen = 0;
  int highestAge = 0;
  int youngestWomanAge = 100;

  String answer;
  do {
    String gender = validateGenderInput();
    int age = validateAgeInput();

    genders.add(gender);
    ages.add(age);

    if (age > highestAge) {
      highestAge = age;
    }

    if (gender == 'M') {
      agesMen += age;
    } else if (gender == 'F' && age < youngestWomanAge) {
      youngestWomanAge = age;
    }

    answer = getUserInput('Do you want to register a new user [Y/N]? ');
  } while (answer == 'y');

  int registeredMen = genders.where((gender) => gender == 'M').length;

  return {
    'genders': genders,
    'ages': ages,
    'highestAge': highestAge,
    'registeredMen': registeredMen,
    'agesMen': agesMen,
    'youngestWomanAge': youngestWomanAge
  };
}

void displayResults(Map<String, dynamic> person) {
  if (person['genders'].isEmpty && person['ages'].isEmpty) {
    stdout.write('No users registered.');
    return;
  }

  int averageMale = person['registeredMen'] == 0
      ? 0
      : person['agesMen'] ~/ person['registeredMen'];

  stdout.write(
      'The highest age read was ${person['highestAge']}. \nThere are ${person['registeredMen']} men registered. \nThe average age of men is $averageMale.\nThe age of the youngest woman is ${person['youngestWomanAge']}.');
}
