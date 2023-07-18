/*
    [CHALLENGE] Create a program that reads the size of three line segments. Analyze their lengths and say
    if it is possible to form a triangle with these lines. Mathematically, for three segments to form a triangle,
    the length of each side must be less than the sum of the other two.
 */

import 'dart:io';

void main() {
  int a = readInt('A: ');
  int b = readInt('B: ');
  int c = readInt('C: ');

  if (isTriangle(a, b, c)) {
    print('Triangle');
  } else {
    print('Not a triangle.');
  }
}

bool isTriangle(int a, int b, int c) {
  return (a < (b + c)) && (b < (a + c)) && (c < (a + b));
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
