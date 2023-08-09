/*
    55) [CHALLENGE] Let’s improve the game we made in exercise 32. From now on,
    the computer will randomly choose a number between 1 and 10 and the player will have 4 attempts to try to guess it.
*/

import 'dart:io';
import 'dart:math';

enum DrawStatus { ODD, EVEN }

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    Map<String, int> getNumber = getNumbers();
    DrawStatus status = drawStatus(getNumber);
    int attempts = 3;

    while (status == DrawStatus.ODD) {
      if (attempts == 0) {
        return stdout.write('You ran out of attempts!');
      }

      printMessage(status, getNumber);
      printAttempts(attempts);

      getNumber = getNumbers();
      status = drawStatus(getNumber);
      attempts--;
    }
    printMessage(status, getNumber);

    stdout.write('\nPlay again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
}

void printAttempts(int attempts) {
  if (attempts == 1) {
    stdout.write('You have $attempts more attempt. \n');
  }

  if (attempts != 0 && attempts != 1) {
    stdout.write('You have $attempts more attempts. \n');
  }
}

DrawStatus drawStatus(Map<String, int> getNumber) {
  DrawStatus drawStatus;

  if (getNumber['computerDraw'] == getNumber['playerChoice']) {
    drawStatus = DrawStatus.EVEN;
  } else {
    drawStatus = DrawStatus.ODD;
  }
  return drawStatus;
}

Map<String, int> getNumbers() {
  int computerDraw = Random().nextInt(10) + 1;
  int playerChoice = readInt('\nType a number between 1 and 10: ');

  return {
    'computerDraw': computerDraw,
    'playerChoice': playerChoice,
  };
}

int readInt(String prompt) {
  int? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    if (value == null || value < 1 || value > 10) {
      print('Error: Please enter a valid number.');
    }
  } while (value == null || value < 1 || value > 10);

  return value;
}

void printMessage(DrawStatus status, Map<String, int> getNumber) {
  String divider = '============================';
  if (status == DrawStatus.EVEN) {
    stdout.write(
        '$divider\nYOU GUESSED IT!\nNumber: ${getNumber['playerChoice']} — Drawn value: ${getNumber['computerDraw']}.\n$divider\n');
  } else {
    stdout.write(
        '$divider\nWRONG GUESS!\nNumber: ${getNumber['playerChoice']} — Drawn value: ${getNumber['computerDraw']}.\n$divider\n');
  }
}
