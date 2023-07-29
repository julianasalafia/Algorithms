// 47) Develop an application that displays the result of the expression 500 + 450 + 400 + 350 + 300 + … + 50 + 0 on the screen.

import 'dart:io';

const int startNumber = 500;
const int minNumber = 0;
const int decrement = 50;
void main() {
  int sum = calculateSum(startNumber);
  printSum(startNumber, decrement, minNumber, sum);
}

printSum(int startNumber, int decrement, int minNumber, int sum) {
  int value = startNumber;

  while (startNumber >= minNumber) {
    if (startNumber > minNumber) {
      stdout.write('$value + ');
    } else {
      stdout.write('$value = ');
    }
    value = startNumber -= decrement;
  }
  stdout.write(sum);
}

int calculateSum(int number) {
  int sum = 0;

  while (number >= minNumber) {
    sum += number;
    number -= decrement;
  }

  return sum;
}
