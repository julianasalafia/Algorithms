/*
    50) Develop a program that randomly generates 20 numbers between 0 and 10 and displays on the screen:
    a) Which numbers were drawn b) How many numbers are above 5 c) How many numbers are divisible by 3
*/

import 'dart:math';

const int times = 20;
const int maxSize = 10;

void main() {
  generateNumbers(times, maxSize);
}

void generateNumbers(int times, int maxSize) {
  late int number;
  late int greaterThanFive = 0;
  late int dividedByThree = 0;

  List<int> numbersList = [];
  List<int> greaterThanFiveList = [];
  List<int> dividedByThreeList = [];

  for (int i = 0; i < times; i++) {
    number = Random().nextInt(maxSize);
    numbersList.add(number);

    if (number > 5) {
      greaterThanFiveList.add(number);
      greaterThanFive++;
    }

    if (number % 3 == 0) {
      dividedByThreeList.add(number);
      dividedByThree++;
    }
  }
  message(numbersList, greaterThanFiveList, dividedByThreeList, greaterThanFive,
      dividedByThree);
}

void message(List<int> numbersList, List<int> greaterThanFiveList,
    List<int> dividedByThreeList, int greaterThanFive, int dividedByThree) {
  return print(
      'Sorted numbers: ${numbersList.join(', ')}. \nThere are $greaterThanFive numbers greater than five: ${greaterThanFiveList.join(', ')}. \nThere are $dividedByThree numbers that can be divided by three: ${dividedByThreeList.join(', ')}.');
}
