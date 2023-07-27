// 41) Develop a program that displays the following count on the screen:
// 100 95 90 85 80 … 0 Finished!

import 'dart:io';

void main() {
  List<int> vector = [];
  int counter = 100;
  int minSize = 0;
  int step = 5;

  while (counter >= minSize) {
    vector.add(counter);
    counter -= step;
  }

  for (int element in vector) {
    if (element > minSize) {
      stdout.write('$element, ');
    } else {
      stdout.write('$element. ');
    }
  }
  print('finished!');
}
