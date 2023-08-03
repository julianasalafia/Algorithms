/*
    53) Make a program that reads the age and gender of 5 people, displaying at the end:
    a) How many men were registered b) How many women were registered
    c) The average age of the group d) The average age of men e) How many women are over 20 years old
*/

import 'dart:io';

const maxSize = 5;

void main() {
  Map<String, Map<String, int>> personInfo = setPersonInfo();
  Map<String, dynamic> gender = calculateStatistics(personInfo);

  print('statistics: $gender');
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
  stdout.write('what\'s your age? ');
  int age = int.parse(stdin.readLineSync()!);
  stdout.write('what\'s your gender? \n1) male 2) female 3) other \n:: ');
  int gender = int.parse(stdin.readLineSync()!);

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
  };
}
