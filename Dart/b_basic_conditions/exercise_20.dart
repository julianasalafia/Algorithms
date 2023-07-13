// Develop a program that reads an integer and shows whether it is EVEN or ODD.

import 'dart:io';

void main() {
  print('ODD OR EVEN');
  print('----------------------------');

  stdout.write('Number: ');
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print('it\'s even!');
  } else {
    print('it\'s odd!');
  }
}
