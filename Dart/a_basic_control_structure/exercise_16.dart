/*
    [CHALLENGE] Write a program to calculate the reduction in a smoker's lifetime.
    Ask for the number of cigarettes smoked per day and how many years they have smoked.
    Consider that a smoker loses 10 minutes of life for each cigarette.
    Calculate how many days of life a smoker will lose and display the total in days.
 */

import 'dart:io';

const double timeLostByCigar = 10 / 60.0;

void main() {
  double smokedPerDay = readDouble('Cigarettes smoked per day: ');
  double smokingTime = readDouble('Years smoking: ');

  timeLost(smokedPerDay, smokingTime);
}

void timeLost(double smokedPerDay, double smokingTime) {
  int yearsSmoking = smokingTime.floor();
  int monthsSmoking = ((smokingTime - yearsSmoking) * 12).round();

  double totalTimeLost = smokedPerDay *
      timeLostByCigar *
      (365 * yearsSmoking + 30 * monthsSmoking);
  int daysLost = totalTimeLost ~/ 24;

  print(
    'Cigarettes smoked per day: $smokedPerDay; years smoking: $smokingTime; days lost: $daysLost.',
  );
}

double readDouble(String prompt) {
  double? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = double.tryParse(input!);
    if (value == null || value < 0) {
      print('Error: Please enter a valid number');
    }
  } while (value == null || value < 0);
  return value;
}
