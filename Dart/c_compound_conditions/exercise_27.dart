// Create a program that reads two grades of a student and calculates his/her average,
// showing a message at the end, according to the reached average:
// Average up to 4.9: FAILED. Average between 5.0 and 6.9: RECOVERY. Average 7.0 or higher: APPROVED.

import 'dart:io';

enum GradeStatus { passed, remedialClass, failed, error }

void main() {
  String answer = 'yes';

  do {
    double firstGrade = readDouble('1st grade: ');
    double secondGrade = readDouble('2nd grade: ');

    double gpa = calculateGPA(firstGrade, secondGrade);
    GradeStatus gradeStatus = getGradeStatus(gpa);
    printGradeStatus(gradeStatus, gpa);

    stdout.write('Do you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  } while (answer == 'yes');
}

void printGradeStatus(GradeStatus gradeStatus, double gpa) {
  switch (gradeStatus) {
    case GradeStatus.passed:
      print('GPA: $gpa. \nPASSED.');
      break;
    case GradeStatus.remedialClass:
      print('GPA: $gpa. \nREMEDIAL CLASSES.');
      break;
    case GradeStatus.failed:
      print('GPA: $gpa. \nFAILED.');
      break;
    case GradeStatus.error:
      print('ERROR: Invalid GPA value.');
      break;
  }
}

double calculateGPA(double firstGrade, double secondGrade) {
  double gpa = (firstGrade + secondGrade) / 2;
  return gpa;
}

GradeStatus getGradeStatus(double gpa) {
  if (gpa >= 7 && gpa <= 10) {
    return GradeStatus.passed;
  }

  if (gpa >= 5 && gpa < 7) {
    return GradeStatus.remedialClass;
  }

  if (gpa >= 0 && gpa < 5) {
    return GradeStatus.failed;
  }
  return GradeStatus.error;
}

double readDouble(String prompt) {
  double? value;

  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = double.tryParse(input!);

    if (value != null && value >= 0 && value <= 10) {
      return value;
    } else {
      print('Error: Please enter a valid number between 0 and 10');
    }
  }
}
