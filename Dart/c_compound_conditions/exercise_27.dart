// Create a program that reads two grades of a student and calculates his/her average,
// showing a message at the end, according to the reached average:
// Average up to 4.9: FAILED. Average between 5.0 and 6.9: RECOVERY. Average 7.0 or higher: APPROVED.

import 'dart:io';

enum GradeStatus { passed, remedialClass, failed, error }

void main() {
  stdout.write('1st grade: ');
  double firstGrade = double.parse(stdin.readLineSync()!);

  stdout.write('2nd grade: ');
  double secondGrade = double.parse(stdin.readLineSync()!);

  double gpa = (firstGrade + secondGrade) / 2;

  GradeStatus gradeStatus = getGradeStatus(gpa);

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
      print('ERROR: NaN');
      break;
  }
}

GradeStatus getGradeStatus(double gpa) {
  if (gpa >= 7 && gpa <= 10) {
    return GradeStatus.passed;
  } else if (gpa >= 5 && gpa < 7) {
    return GradeStatus.remedialClass;
  } else if (gpa >= 0 && gpa < 5) {
    return GradeStatus.failed;
  } else {
    return GradeStatus.error;
  }
}
