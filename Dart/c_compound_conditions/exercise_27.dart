// Create a program that reads two grades of a student and calculates his/her average,
// showing a message at the end, according to the reached average:
// Average up to 4.9: FAILED. Average between 5.0 and 6.9: RECOVERY. Average 7.0 or higher: APPROVED.

import 'dart:io';

void main() {
  stdout.write('1st grade: ');
  double firstGrade = double.parse(stdin.readLineSync()!);

  stdout.write('2nd grade: ');
  double secondGrade = double.parse(stdin.readLineSync()!);

  double gpa = (firstGrade + secondGrade) / 2;

  if (gpa >= 0 && gpa < 5) {
    print('GPA: $gpa. FAILED.');
  } else if (gpa >= 5 && gpa < 7) {
    print('GPA: $gpa. REMEDIAL CLASSES.');
  } else if (gpa >= 7 && gpa <= 10) {
    print('GPA: $gpa. PASSED.');
  } else {
    print('Invalid.');
  }
}
