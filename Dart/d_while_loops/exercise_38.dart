// 38) Write a program that displays the following count on the screen: 6 7 8 9 10 11 Finished!

import 'dart:io';

void main() {
  List<int> vector = [];
  int counter = 6;

  while (counter <= 11) {
    vector.add(counter);
    counter++;
  }

  print('$vector');
}
