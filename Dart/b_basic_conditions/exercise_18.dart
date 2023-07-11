// Create a program that reads a person's birth year, calculates their age, and then shows whether they can vote.

import 'dart:io';

const currentYear = 2023;

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    stdout.write('birth year: ');
    int birthYear = int.parse(stdin.readLineSync()!);

    int age = currentYear - birthYear;

    if (age >= 18) {
      print('You can vote!');
    } else {
      print('You can\'t vote!');
    }

    stdout.write('do you want to try again? ');
    answer = stdin.readLineSync()!;
  }
}
