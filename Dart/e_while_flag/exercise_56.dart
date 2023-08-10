import 'dart:io';
/*
    56) Create a program that reads several numbers from the keyboard and shows the sum of them at the end.
    Note: The program will be interrupted when the number 1111 is entered.
*/

void main() {
  int sum = 0;
  int number;

  do {
    number = readInt('enter a number or 1111 to exit: ');
    if (number != 1111) {
      sum = calculateSum(sum, number);
    }
  } while (number != 1111);

  message(sum);
}

int calculateSum(int sum, int number) {
  sum += number;

  return sum;
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

void message(int sum) {
  return print('The sum of the entered numbers is $sum.');
}
