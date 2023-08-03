/*
    53) Make a program that reads the age and gender of 5 people, displaying at the end:
    a) How many men were registered b) How many women were registered
    c) The average age of the group d) The average age of men e) How many women are over 20 years old
*/

import 'dart:io';

const maxSize = 2;

void main() {
  Map<String, Map<String, int>> personInfo = setPersonInfo();
  Map<String, int> gender = genderCount(personInfo);

  print('array: $personInfo');
  print('men / women :$gender');
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

Map<String, int> genderCount(Map<String, Map<String, int>> info) {
  int men = 0;
  int women = 0;

  for (int i = 1; i <= info.length; i++) {
    if (info['PERSON $i']!['gender']! == 1) {
      men++;
    }

    if (info['PERSON $i']!['gender']! == 2) {
      women++;
    }
  }

  return {
    'men': men,
    'women': women,
  };
}
