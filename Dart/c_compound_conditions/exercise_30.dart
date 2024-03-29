// [CHALLENGE] Redo algorithm 25, adding the feature of showing what type of triangle will be formed:
// EQUILATERAL: all sides equal. ISOSCELES: two sides equal. SCALENE: all sides different.

import 'dart:io';

enum TriangleStatus { EQUILATERAL, ISOSCELES, SCALENE, ERROR }

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    int a = readInt('A: ');
    int b = readInt('B: ');
    int c = readInt('C: ');

    TriangleStatus triangleStatus = getTriangleStatus(a, b, c);
    printTriangleStatus(triangleStatus);

    stdout.write('do you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
}

TriangleStatus getTriangleStatus(int a, int b, int c) {
  int sumBC = b + c;
  int sumAC = a + c;
  int sumAB = a + b;

  if ((a < sumBC) && (b < sumAC) && (c < sumAB)) {
    if (a == b && b == c) {
      return TriangleStatus.EQUILATERAL;
    } else if (a == b || b == c || a == c) {
      return TriangleStatus.ISOSCELES;
    } else {
      return TriangleStatus.SCALENE;
    }
  } else {
    return TriangleStatus.ERROR;
  }
}

void printTriangleStatus(TriangleStatus triangleStatus) {
  switch (triangleStatus) {
    case TriangleStatus.EQUILATERAL:
      print('EQUILATERAL.');
      break;
    case TriangleStatus.ISOSCELES:
      print('ISOSCELES.');
      break;
    case TriangleStatus.SCALENE:
      print('SCALENE.');
      break;
    case TriangleStatus.ERROR:
      print('NOT A TRIANGLE.');
      break;
  }
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
