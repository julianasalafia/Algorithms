// Create an algorithm that reads a distance in meters and shows the corresponding values in other measures.

import 'dart:io';

void main() {
  stdout.write('Distance in meters: ');
  double distance = double.parse(stdin.readLineSync()!);

  Map<String, double> units = {
    'km': 0.001,
    'hm': 0.01,
    'dam': 0.1,
    'dm': 10,
    'cm': 100,
    'mm': 1000
  };

  print('The distance of $distance corresponds to: ');
  units.forEach((unit, factor) {
    print('${convert(distance, factor)}$unit');
  });
}

double convert(double distance, double factor) {
  return distance * factor;
}
