/*
    58) Make an algorithm that reads the age of several students in a class.
    The program will stop when the age 999 is entered. At the end, show how many students are in the
    class and what is the average age of the group.
*/

import 'dart:io';

void main() {
  List<int> ages = registerStudents();
  displayResults(ages);
}

String getUserInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync()!.toLowerCase();
}

List<int> registerStudents() {
  List<int> ages = [];
  String answer = getUserInput('Do you want to register students? [Y/N]? ');

  while (answer == 'y') {
    stdout.write('Age: ');
    String? input = stdin.readLineSync();

    int age;

    try {
      age = int.parse(input!);
    } catch (e) {
      print('Invalid input. Please enter a valid age. ');
      continue;
    }

    if (age == 999) {
      break;
    }

    ages.add(age);
    answer = getUserInput('Do you want to register students? [Y/N]? ');
  }

  return ages;
}

void displayResults(List<int> ages) {
  if (ages.isEmpty) {
    stdout.write('No students registered. ');
    return;
  }

  int sumAges = ages.fold(0, (prev, age) => prev + age);
  int averageAge = sumAges ~/ ages.length;
  stdout
      .write('Number of students: ${ages.length} \nAverage age: $averageAge. ');
}
