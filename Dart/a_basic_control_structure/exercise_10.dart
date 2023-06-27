// Write an algorithm that reads the width and height of a wall, calculates and displays the area to be painted and the amount
// of paint needed for the job, considering that each liter of paint paints an area of 2 square meters.

import 'dart:io';

void main() {
  double width = getInput('wall width: ');
  double height = getInput('wall height: ');

  calculateAreaAndPaint(width, height);
}

double getInput(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    if (input == null) {
      print('Invalid input. Please enter a number.');
      continue;
    }
    try {
      return double.parse(input);
    } on FormatException {
      print('Invalid input. Please enter a number.');
    }
  }
}

void calculateAreaAndPaint(double width, double height) {
  double measure = width * height;
  double volume = measure * 2;

  print(
      'You have $measure square meters to paint. \nIt will be necessary $volume liters of paint.');
}
