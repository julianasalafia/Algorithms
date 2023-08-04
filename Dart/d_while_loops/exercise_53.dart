/*
    53) Make a program that reads the age and gender of 5 people, displaying at the end:
    a) How many men were registered b) How many women were registered
    c) The average age of the group d) The average age of men e) How many women are over 20 years old
*/

import 'dart:io';

const maxSize = 5;

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    Map<String, Map<String, int>> personInfo = setPersonInfo();

    message(personInfo);

    stdout.write('\n\ndo you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
}

void message(Map<String, Map<String, int>> info) {
  Map<String, dynamic> statistics = calculateStatistics(info);
  int men = statistics['men'];
  int women = statistics['women'];
  int averageAgeGroup = statistics['averageAgeGroup'];
  int averageAgeMen = statistics['averageAgeMen'];
  int womenOverTwenty = statistics['womenOverTwenty'];
  int otherGender = statistics['otherGender'];

  stdout.write(
      'Registered men: $men. \nRegistered women: $women. \nAverage age of the group: $averageAgeGroup. \nAverage age of men: $averageAgeMen. \nWomen over 20 years old: $womenOverTwenty. \n$otherGender people did not share their gender.');
}

Map<String, Map<String, int>> setPersonInfo() {
  Map<String, Map<String, int>> personInfo = {};

  int counter = 1;

  while (counter <= maxSize) {
    Map<String, int> getPersonInfo = printQuestion(counter);
    personInfo.putIfAbsent('PERSON $counter', () => getPersonInfo);
    counter++;
  }
  return personInfo;
}

Map<String, int> printQuestion(int number) {
  print('============= PERSON $number =============');
  int age = readInt('what\'s your age? ', 0, 100);
  int gender =
      readInt('what\'s your gender? \n1) male 2) female 3) other \n:: ', 1, 3);

  return {
    'age': age,
    'gender': gender,
  };
}

Map<String, dynamic> calculateStatistics(Map<String, Map<String, int>> info) {
  int men = 0;
  int women = 0;
  int sumAgeMen = 0;
  int sumAgeWomen = 0;
  int sumAgeGroup = 0;
  int womenOverTwenty = 0;
  int otherGender = 0;
  late int averageAgeGroup;
  late int averageAgeMen;

  for (int i = 1; i <= info.length; i++) {
    if (info['PERSON $i']!['gender']! == 1) {
      men++;

      sumAgeMen += info['PERSON $i']!['age']!;
    }

    if (info['PERSON $i']!['gender']! == 2) {
      women++;
      sumAgeWomen += info['PERSON $i']!['age']!;

      if (info['PERSON $i']!['age']! >= 20) {
        womenOverTwenty++;
      }
    }

    if (info['PERSON $i']!['gender']! == 3) {
      otherGender++;
    }
  }

  averageAgeMen = sumAgeMen ~/ men;

  sumAgeGroup = sumAgeWomen + sumAgeMen;
  averageAgeGroup = sumAgeGroup ~/ info.length;

  return {
    'men': men,
    'women': women,
    'averageAgeGroup': averageAgeGroup,
    'averageAgeMen': averageAgeMen,
    'womenOverTwenty': womenOverTwenty,
    'otherGender': otherGender,
  };
}

int readInt(String prompt, int minValue, int maxValue) {
  int? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    if (value == null || value < minValue || value > maxValue) {
      print('\nERROR: Please enter a valid number\n');
    }
  } while (value == null || value < minValue || value > maxValue);

  return value;
}
