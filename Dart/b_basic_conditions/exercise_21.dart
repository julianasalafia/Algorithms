/*
    Make an algorithm that reads a specific year and shows whether or not it is LEAP year.
*/

import 'dart:io';

void main() {
  stdout.write('Year: ');
  int year = int.parse(stdin.readLineSync()!);

  if (year % 4 == 0 || year % 400 == 0 && year % 100 != 0) {
    print('Leap year!');
  } else {
    print('Non-leap year!');
  }
}
