// Make a program that reads the width and length of a rectangular terrain, calculating and showing its area in m².
// The program should also show the classification of this land, according to the list below:
// Below 100m² = POPULAR LAND. Between 100m² and 500m² = MASTER LAND. Above 500m² = VIP LAND.

import 'dart:io';

enum AreaStatus { popularLand, masterLand, vipLand, error }

void main() {
  double width = readDouble('width: ');
  double length = readDouble('length: ');
  double area = calculateArea(width, length);
  AreaStatus areaStatus = getAreaStatus(area);
  printAreaStatus(areaStatus, area);
}

double calculateArea(double width, double length) {
  double area = width * length;
  return area;
}

AreaStatus getAreaStatus(double area) {
  if (area >= 0 && area <= 99) {
    return AreaStatus.popularLand;
  }

  if (area >= 100 && area <= 500) {
    return AreaStatus.masterLand;
  }

  if (area > 500) {
    return AreaStatus.vipLand;
  }
  return AreaStatus.error;
}

void printAreaStatus(AreaStatus areaStatus, double area) {
  switch (areaStatus) {
    case AreaStatus.popularLand:
      print('Area: $area. \nPOPULAR LAND.');
      break;
    case AreaStatus.masterLand:
      print('Area: $area. \MASTER LAND.');
      break;
    case AreaStatus.vipLand:
      print('Area: $area. \VIP LAND.');
      break;
    case AreaStatus.error:
      print('ERROR: Invalid area in m².');
      break;
  }
}

double readDouble(String prompt) {
  double? value;

  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = double.tryParse(input!);

    if (value != null && value >= 0) {
      return value;
    } else {
      print('Error: Please enter a valid number.');
    }
  }
}
