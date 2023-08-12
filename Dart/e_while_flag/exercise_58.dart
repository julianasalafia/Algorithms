/*
    58) Make an algorithm that reads the age of several students in a class.
    The program will stop when the age 999 is entered. At the end, show how many students are in the
    class and what is the average age of the group.
*/

import 'dart:io';

void main() {
  int count = 0;
  List<int> ages = [];
  int sumAges = 0;

  stdout.write('Do you want to register students? [Y/N]? ');
  String answer = stdin.readLineSync()!.toLowerCase();

  while (answer == 'y') {
    stdout.write('Age: ');
    int age = int.parse(stdin.readLineSync()!);

    if (age == 999) {
      break;
    }

    sumAges += age;
    ages.add(age);
    count++;

    stdout.write('Do you want to register students? [Y/N]? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }

  int averageAge = sumAges ~/ ages.length;
  stdout.write('Number of students: $count \nAverage age: $averageAge.');
}
