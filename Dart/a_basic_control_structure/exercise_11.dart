// Write a logic that reads the values of A, B, and C from a second-degree equation and shows the value of Delta.

import 'dart:io';

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    try {
      stdout.write('a: ');
      int a = int.parse(stdin.readLineSync()!);

      stdout.write('b: ');
      int b = int.parse(stdin.readLineSync()!);

      stdout.write('c: ');
      int c = int.parse(stdin.readLineSync()!);

      int delta = calculatesDelta(a, b, c);
      print('Delta: $delta');

      stdout.write('do you want to try again? ');
      answer = stdin.readLineSync()!.toLowerCase();
    } catch (exception) {
      print('Error: Please enter a valid integer');
    }
  }
}

calculatesDelta(int a, int b, int c) {
  int delta = (b * b) - 4 * a * c;
  return delta;
}
