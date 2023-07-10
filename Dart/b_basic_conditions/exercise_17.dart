/*
     Write a program that asks for a car's speed. If it exceeds 80Km/h, display a message saying that the user has been fined.
     In this case, display the fine amount, charging R$5 for each Km above the speed limit.
*/

import 'dart:io';

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    int speedLimit = readInt('speed limit (km/h): ');
    int carSpeed = readInt('car speed (km/h): ');

    fine(speedLimit, carSpeed);

    stdout.write('do you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
}

void fine(int speedLimit, int carSpeed) {
  if (carSpeed > speedLimit) {
    double fineAmount = (carSpeed - speedLimit) * 5;
    print('you\'ve been fined in US\$${fineAmount.toStringAsFixed(2)}');
  } else {
    print('you\'re good!');
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
