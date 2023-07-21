// [CHALLENGE] Create a Rock-Paper-Scissors game

import 'dart:io';
import 'dart:math';

void main() {
  print('choose an option: \n1) rock \n2) paper \n3)scissors');
  int playerOption = int.parse(stdin.readLineSync()!);
  int computerOption = Random().nextInt(3) + 1;

  if (playerOption == 1 && computerOption == 3) {
    String playerChoice = 'rock';
    String computerChoice = 'scissors';

    print('Player: $playerChoice\nComputer: $computerChoice');
    print('Player wins.');
  } else if (playerOption == 1 && computerOption == 2) {
    String playerChoice = 'rock';
    String computerChoice = 'paper';

    print('Player: $playerChoice\nComputer: $computerChoice');
    print('Player looses.');
  } else if (playerOption == 2 && computerOption == 1) {
    String playerChoice = 'paper';
    String computerChoice = 'rock';

    print('Player: $playerChoice\nComputer: $computerChoice');
    print('Player wins.');
  } else if (playerOption == 2 && computerOption == 3) {
    String playerChoice = 'paper';
    String computerChoice = 'scissors';

    print('Player: $playerChoice\nComputer: $computerChoice');
    print('Player looses.');
  } else if (playerOption == 3 && computerOption == 2) {
    String playerChoice = 'scissors';
    String computerChoice = 'paper';

    print('Player: $playerChoice\nComputer: $computerChoice');
    print('Player wins.');
  } else if (playerOption == 3 && computerOption == 1) {
    String playerChoice = 'scissors';
    String computerChoice = 'rock';

    print('Player: $playerChoice\nComputer: $computerChoice');
    print('Player loses.');
  } else if (playerOption == computerOption) {
    print('Tie.');
  } else {
    print('Invalid.');
  }
}
