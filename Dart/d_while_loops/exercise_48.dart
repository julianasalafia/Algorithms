// 48) Make a program that reads 7 integers and displays their sum at the end.

import 'dart:io';

const int maxSize = 7;

void main() {
  int counter = 1;
  int sum = 0;

  while (counter <= maxSize) {
    stdout.write('type a number: ');
    int number = int.parse(stdin.readLineSync()!);

    sum += number;
    counter++;
  }
  print('sum: $sum');
}
