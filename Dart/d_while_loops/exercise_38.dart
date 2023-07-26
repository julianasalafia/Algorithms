// 38) Write a program that displays the following count on the screen: 6 7 8 9 10 11 Finished!

import 'dart:io';

void main() {
  List<int> vector = [];
  int counter = 6;
  int maxSize = 11;

  while (counter <= maxSize) {
    vector.add(counter);
    counter++;
  }

  for (int element in vector) {
    if (element < maxSize) {
      stdout.write('$element, ');
    } else {
      stdout.write('$element. ');
    }
  }
  print('finished!');
}
