// 38) Write a program that displays the following count on the screen: 6 7 8 9 10 11 Finished!

import 'dart:io';

void main() {
  int counter = 6;

  while (counter < 12) {
    stdout.write('$counter, ');
    counter++;
  }
  print('finished!');
}
