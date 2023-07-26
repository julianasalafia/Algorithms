// 40) Create an application that displays the following count on the screen:
// 0 3 6 9 12 15 18 Finished!

import 'dart:io';

void main() {
  List<int> vector = [];
  int counter = 0;
  int maxSize = 18;
  int change = 3;

  while (counter <= maxSize) {
    vector.add(counter);
    counter += change;
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
