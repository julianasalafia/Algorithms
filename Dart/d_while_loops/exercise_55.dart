import 'dart:io';
import 'dart:math';

void main() {
  late int computerDraw;
  late int playerChoice;
  int counter = 0;
  int attempts = 3;

  do {
    if (counter < 3) {
      computerDraw = Random().nextInt(5) + 1;
      playerChoice = readInt('\nType a number between 1 and 5: ');
      counter++;

      if (computerDraw != playerChoice && attempts != 1) {
        attempts--;
        stdout.write('You have $attempts attempts left. ');
      }

      if (counter == 3) {
        return stdout.write('You ran out of attempts!\n');
      }
    }

    printMessage(playerChoice, computerDraw);
  } while (computerDraw != playerChoice);
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
    stdout.write(
        'YOU GUESSED IT!\nNumber: $playerChoice — Drawn value: $computerDraw.\n');
  } else {
    stdout.write(
        'WRONG GUESS!\nNumber: $playerChoice — Drawn value: $computerDraw.\n');
  }
}
