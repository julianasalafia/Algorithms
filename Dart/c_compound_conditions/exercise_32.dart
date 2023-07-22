// [CHALLENGE] Create a game where the computer will draw a number between 1 and 5, and the player will try to guess the drawn value.

import 'dart:io';
import 'dart:math';

void main() {
  int computerDraw = Random().nextInt(5) + 1;

  stdout.write('Type a number between 1 and 5: ');
  int playerChoice = int.parse(stdin.readLineSync()!);

  if (playerChoice != computerDraw) {
    print('Number: $playerChoice \nDrawn value: $computerDraw.');
  }

  if (playerChoice == computerDraw) {
    print('Number: $playerChoice \nDrawn value: $computerDraw.');
  }
}
