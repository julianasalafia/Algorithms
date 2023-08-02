/*
    52) Create an algorithm that reads the age of 10 people, displaying at the end:
    a) What is the average age of the group b) How many people are over 18 years old
    c) How many people are under 5 years old d) What was the oldest age read
*/

import 'dart:io';

const times = 10;

void main() {
  List<int> ages = readAge();
  Map<String, int> usersInfo = getInfo(ages);
  message(usersInfo);
}

Map<String, int> getInfo(List<int> ages) {
  int sumAges = 0;
  int underFiveYearsOld = 0;
  int overEighteenYearsOld = 0;
  int oldestAge = 0;

  for (int element in ages) {
    sumAges += element;

    if (element <= 5) {
      underFiveYearsOld++;
    }

    if (element >= 18) {
      overEighteenYearsOld++;
    }

    if (element > oldestAge) {
      oldestAge = element;
    }
  }

  int averageAge = sumAges ~/ ages.length;

  return {
    'averageAge': averageAge,
    'overEighteenYearsOld': overEighteenYearsOld,
    'underFiveYearsOld': underFiveYearsOld,
    'oldestAge': oldestAge
  };
}

void message(Map<String, int> getInfo) {
  print(
      '- The average age of the group is ${getInfo['averageAge']} \n- There are ${getInfo['overEighteenYearsOld']} people over 18 years old \n- There are ${getInfo['underFiveYearsOld']} people under 5 years old \n- ${getInfo['oldestAge']} is the oldest age');
}

List<int> readAge() {
  int counter = 1;
  List<int> ages = [];

  while (counter <= times) {
    int age = readInt('$counter) age: ');
    ages.add(age);
    counter++;
  }
  return ages;
}

int readInt(String prompt) {
  int? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    if (value == null || value < 0) {
      print('Error: Please enter a valid number');
    }
  } while (value == null || value < 0);

  return value;
}
