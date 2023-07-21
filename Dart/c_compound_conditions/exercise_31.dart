// [CHALLENGE] Create a Rock-Paper-Scissors game

import 'dart:io';
import 'dart:math';

void main() {
  late String playerChoice;
  late String computerChoice;

  stdout.write('choose an option: \n1) rock \n2) paper \n3)scissors \n:: ');
  int playerOption = int.parse(stdin.readLineSync()!);
  int computerOption = Random().nextInt(3) + 1;

  if (playerOption == 1 && computerOption == 3) {
    playerChoice = 'rock';
    computerChoice = 'scissors';

    print('Player: $playerChoice\nComputer: $computerChoice');
    print('Player wins.');
  } else if (playerOption == 1 && computerOption == 2) {
    playerChoice = 'rock';
    computerChoice = 'paper';

    print('Player: $playerChoice\nComputer: $computerChoice');
    print('Player looses.');
  } else if (playerOption == 2 && computerOption == 1) {
    playerChoice = 'paper';
    computerChoice = 'rock';

    print('Player: $playerChoice\nComputer: $computerChoice');
    print('Player wins.');
  } else if (playerOption == 2 && computerOption == 3) {
    playerChoice = 'paper';
    computerChoice = 'scissors';

    print('Player: $playerChoice\nComputer: $computerChoice');
    print('Player looses.');
  } else if (playerOption == 3 && computerOption == 2) {
    playerChoice = 'scissors';
    computerChoice = 'paper';

    print('Player: $playerChoice\nComputer: $computerChoice');
    print('Player wins.');
  } else if (playerOption == 3 && computerOption == 1) {
    playerChoice = 'scissors';
    computerChoice = 'rock';

    print('Player: $playerChoice\nComputer: $computerChoice');
    print('Player loses.');
  } else if (playerOption == computerOption) {
    print('Tie.');
  } else {
    print('Invalid.');
  }
}
