import 'dart:io';
/*
    56) Create a program that reads several numbers from the keyboard and shows the sum of them at the end.
    Note: The program will be interrupted when the number 1111 is entered.
*/

void main() {
  int sum = 0;
  int number = readInt('enter a number or 1111 to exit: ');

  while (number != 1111) {
    sum += number;

    number = readInt('enter a number or 1111 to exit: ');
  }
  print('The sum of the entered numbers is $sum.');
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
