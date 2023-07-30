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

  List<int> oddNumbers = [];
  List<int> evenNumbers = [];

  for (int number in vector) {
    if (number % 2 == 0) {
      even++;
      evenNumbers.add(number);
    } else {
      odd++;
      oddNumbers.add(number);
    }
  }
  message(even, odd, oddNumbers, evenNumbers);
}

void message(int even, int odd, List<int> oddNumbers, List<int> evenNumbers) {
  String divisor = '\n=========================================\n';
  String message =
      'There are $even even numbers: ${evenNumbers.join(', ')}. \nThere are $odd odd numbers: ${oddNumbers.join(', ')}.';

  return print('$divisor \n$message \n$divisor');
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
