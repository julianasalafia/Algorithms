// [CHALLENGE] Create a game where the computer will draw a number between 1 and 5, and the player will try to guess the drawn value.

import 'dart:io';
import 'dart:math';

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    int computerDraw = Random().nextInt(5) + 1;
    int playerChoice = readInt('Type a number between 1 and 5: ');

    printMessage(playerChoice, computerDraw);

    stdout.write('\ndo you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
}

int readInt(String prompt) {
  int? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    if (value == null || value < 1 || value > 5) {
      print('Error: Please enter a valid number.');
    }
  } while (value == null || value < 1 || value > 5);

  return value;
}

void printMessage(int playerChoice, int computerDraw) {
  if (computerDraw == playerChoice) {
    print(
        'YOU GUESSED IT!\nNumber: $playerChoice — Drawn value: $computerDraw.');
  } else {
    print('WRONG GUESS!\nNumber: $playerChoice — Drawn value: $computerDraw.');
  }
}
