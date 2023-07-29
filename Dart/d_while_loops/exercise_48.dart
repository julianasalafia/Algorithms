// 48) Make a program that reads 7 integers and displays their sum at the end.

import 'dart:io';

const int maxSize = 7;

void main() {
  List<int> vector = [];
  int counter = 1;
  int sum = 0;

  while (counter <= maxSize) {
    stdout.write('type a number: ');
    int number = int.parse(stdin.readLineSync()!);
    vector.add(number);
    sum += number;
    counter++;
  }

  for (int i = 0; i < vector.length; i++) {
    if (i != vector.length - 1) {
      stdout.write('${vector[i]} + ');
    } else {
      stdout.write('${vector[i]} = ');
    }
  }
  print('$sum');
}
