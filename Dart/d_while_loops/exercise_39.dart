// 39) Make an algorithm that displays the following count on the screen:
// 10 9 8 7 6 5 4 3 Finished!

import 'dart:io';

void main() {
  List<int> vector = [];
  int counter = 10;
  int minSize = 3;

  while (counter >= minSize) {
    vector.add(counter);
    counter--;
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
