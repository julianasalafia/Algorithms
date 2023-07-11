// Create a program that reads a person's birth year, calculates their age, and then shows whether they can vote.

import 'dart:io';

const currentYear = 2023;

void main() {
  String? answer;

  do {
    stdout.write('birth year: ');
    int? birthYear = int.tryParse(stdin.readLineSync()!);
    if (birthYear == null) {
      print('Error: Please enter a valid number');
    } else {
      int age = currentYear - birthYear;
      canVote(age);

      stdout.write('do you want to try again? ');
      answer = stdin.readLineSync()!;
    }
  } while (answer == 'yes');
}

void canVote(int age) {
  if (age >= 18) {
    print('You can vote!');
  } else {
    print('You can\'t vote!');
  }
}
