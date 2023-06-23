// Create an algorithm that reads a real number and displays its double and its third part on the screen.

import 'dart:io';

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    stdout.write('number: ');
    try {
      double number = double.parse(stdin.readLineSync()!);
      doubleAndThirdPart(number);

      stdout.write('do you want to try again? ');
      answer = stdin.readLineSync()!.toLowerCase();
    } catch (exception) {
      print('Error: Please enter a valid integer');
    }
  }
}

void doubleAndThirdPart(double number) {
  double numberMultipliedBy2 = number * 2;
  double thirdPart = number / 3;
  String _thirdPart = thirdPart.toStringAsFixed(1);

  print(
      'The double of $number is $numberMultipliedBy2. \nThe third part of $number is $_thirdPart.');
}
