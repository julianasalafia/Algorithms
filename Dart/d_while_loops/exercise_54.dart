/*
    54) Develop an application that reads the weight and height of 7 people, displaying on the screen:
    a) What was the average height of the group b) How many people weigh more than 90Kg
    c) How many people who weigh less than 50Kg are under 1.60 d) How many people who are over 1.90m tall weigh more than 100Kg.
*/

import 'dart:io';

void main() {
  int counter = 1;
  List<double> averageHeight = [];
  int greaterThan90 = 0;
  int lessThan60and160 = 0;
  int greaterThan90and100 = 0;

  while (counter <= 7) {
    print("Person's $counter weight? ");
    double weight = double.parse(stdin.readLineSync()!);

    print("How tall? ");
    double height = double.parse(stdin.readLineSync()!);

    averageHeight.add(height);

    if (weight >= 90) {
      greaterThan90++;
    }

    if (weight <= 50 && height <= 1.60) {
      lessThan60and160++;
    }

    if (weight >= 100 && height >= 1.90) {
      greaterThan90and100++;
    }
    counter++;
  }

  double sum = averageHeight.reduce((a, b) => a + b);
  double average = sum / averageHeight.length;

  print('Average height of the group: ${average.round()}.');
  print('Greater than 90kg: $greaterThan90.');
  print('Less than 50kg and less than 160cm: $lessThan60and160.');
  print('Greater than 90kg and greater than 190cm: $greaterThan90and100.');
}
