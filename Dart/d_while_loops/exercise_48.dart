// 48) Make a program that reads 7 integers and displays their sum at the end.

import 'dart:io';

const int maxSize = 7;

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    List<int> vector = readNumbers(maxSize);
    int sum = calculateSum(vector);
    printSum(vector, sum);

    stdout.write('\ndo you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
}

List<int> readNumbers(int maxSize) {
  List<int> vector = [];
  int counter = 1;

  while (counter <= maxSize) {
    int number = readInt('type a number: ');
    vector.add(number);
    counter++;
  }
  return vector;
}

int calculateSum(List<int> vector) {
  int sum = 0;

  for (int number in vector) {
    sum += number;
  }
  return sum;
}

void printSum(List<int> vector, int sum) {
  for (int i = 0; i < vector.length; i++) {
    if (i != vector.length - 1) {
      stdout.write('${vector[i]} + ');
    } else {
      stdout.write('${vector[i]} = ');
    }
  }
  print('$sum');
}

int readInt(String prompt) {
  int? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    if (value == null || value < 0) {
      print('Error: Please enter a valid number.');
    }
  } while (value == null || value < 0);

  return value;
}
