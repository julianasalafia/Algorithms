/*
    60) Develop an algorithm that reads the name, age and gender of several people.
    The program will ask the user whether he wants to continue or not. At the end, show:
    a) the name of the oldest person b) the name of the youngest woman
    c) the average age of the group d) how many men are over 30 years old
    e) how many women are under 18 years old
*/

import 'dart:io';

void main() {
  final getInfo = signUpPeople();
  message(getInfo);
}

List<People> signUpPeople() {
  List<People> people = [];
  String answer = 'Y';

  do {
    String name = getUserInput('name: ');
    int age = validateAgeInput();
    String gender = validateGenderInput();

    people.add(
      People(
        name: name,
        age: age,
        gender: gender,
      ),
    );

    answer = getUserInput('Do you want to register a new person? [Y/N]: ')
        .toUpperCase();
  } while (answer == 'Y');

  return people;
}

String getUserInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync()!.toLowerCase();
}

int validateAgeInput() {
  int? age;
  do {
    stdout.write('age: ');
    age = int.tryParse(stdin.readLineSync()!);
  } while (age == null || age < 0);
  return age;
}

String validateGenderInput() {
  String gender;
  do {
    stdout.write('gender [M/F]: ');
    gender = stdin.readLineSync()!.toUpperCase();
  } while (gender != 'M' && gender != 'F');
  return gender;
}

void message(List<People> people) {
  int totalAge = 0;
  int menOver30 = 0;
  int womenUnder18 = 0;
  People? oldestPerson;
  People? youngestWoman;

  for (var person in people) {
    totalAge += person.age;

    if (oldestPerson == null || person.age > oldestPerson.age) {
      oldestPerson = person;
    }

    if (person.gender == 'F' &&
        (youngestWoman == null || person.age < youngestWoman.age)) {
      youngestWoman = person;
    }

    if (person.gender == 'M' && person.age > 30) {
      menOver30++;
    }

    if (person.gender == 'F' && person.age < 18) {
      womenUnder18++;
    }
  }

  double averageAge = totalAge / people.length;

  print('''
  - The average age of the group is ${averageAge.toStringAsFixed(0)}
      \n- The oldest person is called ${oldestPerson?.name}
      \n- The youngest woman is called ${youngestWoman?.name}
      \n- There are $menOver30 men over 30 years old
      \n- There are $womenUnder18 women under 18 years old.
      ''');
}

class People {
  String name;
  int age;
  String gender;

  People({required this.name, required this.age, required this.gender});
}
