/*
     Write a program that asks for a car's speed. If it exceeds 80Km/h, display a message saying that the user has been fined.
     In this case, display the fine amount, charging R$5 for each Km above the speed limit.
*/

import 'dart:io';

void main() {
  stdout.write('speed limit (km/h): ');
  int speedLimit = int.parse(stdin.readLineSync()!);

  stdout.write('car speed (km/h): ');
  int carSpeed = int.parse(stdin.readLineSync()!);

  if (carSpeed > speedLimit) {
    double fineAmount = (carSpeed - speedLimit) * 5;
    print('you\'ve been fined in US\$${fineAmount.toStringAsFixed(2)}');
  }
}
