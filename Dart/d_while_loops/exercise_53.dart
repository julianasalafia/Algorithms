/*
    53) Make a program that reads the age and gender of 5 people, displaying at the end:
    a) How many men were registered b) How many women were registered
    c) The average age of the group d) The average age of men e) How many women are over 20 years old
*/

import 'dart:io';

void main() {
  int men = 0;
  int women = 0;
  int sumAgeGroup = 0;
  int sumAgeMen = 0;
  int womenOverTwenty = 0;
  late int averageAgeGroup;
  late int averageAgeMen;
  late int age;
  late int gender;

  for (int i = 1; i <= 5; i++) {
    print('============= PERSON $i =============');
    stdout.write('what\'s your age? ');
    age = int.parse(stdin.readLineSync()!);
    stdout.write('what\'s your gender? \n1) male 2) female 3) other \n:: ');
    gender = int.parse(stdin.readLineSync()!);

    if (gender == 1) {
      men++;
      sumAgeMen += age;
    }

    if (gender == 2) {
      women++;

      if (age >= 20) {
        womenOverTwenty++;
      }
    }
  }

  sumAgeGroup += age;
  averageAgeGroup = sumAgeGroup ~/ 5;
  averageAgeMen = sumAgeMen ~/ men;

  print(
      'men registered: $men \nwomen registered: $women \naverage age: $averageAgeGroup \naverage age men: $averageAgeMen \nwomen over twenty: $womenOverTwenty');
}
