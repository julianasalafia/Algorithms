// 49) Create a program that reads 6 integers and displays how many of them are even and how many are odd at the end.

import 'dart:io';

const int maxSize = 6;

void main() {
  List<int> vector = readNumbers(maxSize);
  oddOrEven(vector);
}

void oddOrEven(List<int> vector) {
  int odd = 0;
  int even = 0;

  for (int number in vector) {
    if (number % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }

  print('There are $even even numbers and $odd odd numbers.');
}

List<int> readNumbers(int maxSize) {
  List<int> vector = [];

  int counter = 0;

  while (counter < maxSize) {
    int number = readInt('type a number: ');
    vector.add(number);
    counter++;
  }
  return vector;
}

int readInt(String prompt) {
  int? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    if (value == null) {
      print('Error: Please enter a valid number.');
    }
  } while (value == null);

  return value;
}
