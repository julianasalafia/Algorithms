/*
    54) Develop an application that reads the weight and height of 7 people, displaying on the screen:
    a) What was the average height of the group b) How many people weigh more than 90Kg
    c) How many people who weigh less than 50Kg are under 1.60 d) How many people who are over 1.90m tall weigh more than 100Kg.
*/

import 'dart:io';

const maxSize = 7;

void main() {
  List<Map<String, dynamic>> peopleInfo = setPersonInfo();
  message(peopleInfo);
}

List<Map<String, dynamic>> setPersonInfo() {
  List<Map<String, dynamic>> peopleInfo = [];

  for (int counter = 1; counter <= maxSize; counter++) {
    Map<String, double> personInfo = getPersonDetails(counter);
    peopleInfo.add(personInfo);
  }
  return peopleInfo;
}

Map<String, double> getPersonDetails(int number) {
  print('============= PERSON $number =============');
  double weight = readDouble('what\'s your weight? ');
  double height = readDouble('how tall? ');

  return {'weight': weight, 'height': height};
}

void message(List<Map<String, dynamic>> info) {
  Map<String, dynamic> statistics = calculateStatistics(info);

  double average = statistics['average'] as double;
  int greaterThan90 = statistics['greaterThan90'] as int;
  int lessThan60and160 = statistics['lessThan60and160'] as int;
  int greaterThan90and100 = statistics['greaterThan90and100'] as int;

  stdout.write(
      'Average height of the group: ${average.toStringAsFixed(2)} \nGreater than 90kg: $greaterThan90 \nLess than 50kg and less than 160cm: $lessThan60and160 \nGreater than 90kg and greater than 190cm: $greaterThan90and100');
}

double readDouble(String prompt) {
  double? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = double.tryParse(input!);
    if (value == null) {
      print('Error: Please enter a valid number');
    }
  } while (value == null);
  return value;
}

Map<String, dynamic> calculateStatistics(List<Map<String, dynamic>> info) {
  int greaterThan90 = 0;
  int lessThan60and160 = 0;
  int greaterThan90and100 = 0;
  List<double> averageHeight = [];

  for (Map<String, dynamic> item in info) {
    double weight = item['weight'] as double;
    double height = item['height'] as double;

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
  }

  double sum = averageHeight.reduce((a, b) => a + b);
  double average = sum / averageHeight.length;

  return {
    'average': average,
    'greaterThan90': greaterThan90,
    'lessThan60and160': lessThan60and160,
    'greaterThan90and100': greaterThan90and100,
  };
}
