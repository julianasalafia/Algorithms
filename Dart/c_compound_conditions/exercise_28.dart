// Make a program that reads the width and length of a rectangular terrain, calculating and showing its area in m².
// The program should also show the classification of this land, according to the list below:
// Below 100m² = POPULAR LAND. Between 100m² and 500m² = MASTER LAND. Above 500m² = VIP LAND.

import 'dart:io';

void main() {
  stdout.write('width: ');
  double width = double.parse(stdin.readLineSync()!);

  stdout.write('length: ');
  double length = double.parse(stdin.readLineSync()!);

  double area = width * length;

  if (area >= 0 && area <= 99) {
    print('Area: $area. \nPOPULAR LAND.');
  } else if (area >= 100 && area <= 500) {
    print('Area: $area. \nMASTER LAND.');
  } else if (area > 500) {
    print('Area: $area. \nVIP LAND.');
  } else {
    print('Invalid.');
  }
}
