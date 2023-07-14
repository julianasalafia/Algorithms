/*
    Make an algorithm that reads a specific year and shows whether or not it is LEAP year.
*/

import 'dart:io';

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    try {
      stdout.write('Year: ');
      int year = int.parse(stdin.readLineSync()!);

      if (isLeapYear(year)) {
        print('Leap year!');
      } else {
        print('Non-leap year!');
      }

      stdout.write('do you want to try again? ');
      answer = stdin.readLineSync()!.toLowerCase();
    } catch (exception) {
      print('Error: Please, enter a valid year.');
    }
  }
}

bool isLeapYear(int year) {
  return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
}
