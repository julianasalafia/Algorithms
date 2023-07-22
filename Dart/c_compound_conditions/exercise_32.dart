// [CHALLENGE] Create a game where the computer will draw a number between 1 and 5, and the player will try to guess the drawn value.

import 'dart:io';
import 'dart:math';

void main() {
  int computerDraw = Random().nextInt(5) + 1;
  int playerChoice = readInt('Type a number between 1 and 5: ');

  if (playerChoice != computerDraw) {
    printMessage(playerChoice, computerDraw);
  }

  if (playerChoice == computerDraw) {
    printMessage(playerChoice, computerDraw);
  }
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

void printMessage(int playerChoice, int computerDraw) =>
    print('Number: $playerChoice \nDrawn value: $computerDraw.');
