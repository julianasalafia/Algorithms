// Create a program that reads a person's birth year, calculates their age, and then shows whether they can vote.

import 'dart:io';

const currentYear = 2023;

void main() {
  birthYear();
}

void birthYear() {
  String? answer;

  do {
    int birthYear = readInt('birth year: ');

    if (birthYear == null) {
      print('Error: Please enter a valid number');
    } else {
      int age = currentYear - birthYear;
      canVote(age);

      answer = readString('do you want to try again? ').toLowerCase();
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

String readString(String prompt) {
  String? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = input!;

    if (value == null) {
      print('Error: Please enter a valid string');
    }
  } while (value == null);

  return value;
}
