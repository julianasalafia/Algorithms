/*
    [CHALLENGE] Create a program that reads the size of three line segments. Analyze their lengths and say
    if it is possible to form a triangle with these lines. Mathematically, for three segments to form a triangle,
    the length of each side must be less than the sum of the other two.
 */

import 'dart:io';

void main() {
  stdout.write('A: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('B: ');
  int b = int.parse(stdin.readLineSync()!);
  stdout.write('C: ');
  int c = int.parse(stdin.readLineSync()!);

  if ((a < (b + c)) && (b < (a + c)) && (c < (a + b))) {
    print('Triangle.');
  } else {
    print('Not a triangle.');
  }
}
