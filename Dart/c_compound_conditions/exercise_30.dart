// [CHALLENGE] Redo algorithm 25, adding the feature of showing what type of triangle will be formed:
// EQUILATERAL: all sides equal. ISOSCELES: two sides equal. SCALENE: all sides different.

import 'dart:io';

void main() {
  stdout.write('A: ');
  int a = int.parse(stdin.readLineSync()!);

  stdout.write('B: ');
  int b = int.parse(stdin.readLineSync()!);

  stdout.write('C: ');
  int c = int.parse(stdin.readLineSync()!);

  if ((a < (b + c)) && (b < (a + c)) && (c < (a + b))) {
    if (a == b && b == c) {
      print('EQUILATERAL.');
    } else if (a == b || b == c || a == c) {
      print('ISOSCELES.');
    } else {
      print('SCALENE.');
    }
  } else {
    print('Not a triangle.');
  }
}
