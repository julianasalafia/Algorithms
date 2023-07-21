// [CHALLENGE] Create a Rock-Paper-Scissors game

import 'dart:io';
import 'dart:math';

enum GameStatus { ROCK, PAPER, SCISSORS, TIE, ERROR }

void main() {
  stdout.write('choose an option: \n1) rock \n2) paper \n3)scissors \n:: ');
  int playerOption = int.parse(stdin.readLineSync()!);
  int computerOption = Random().nextInt(3) + 1;

  print(getGameStatus(playerOption, computerOption));
  printGameResult(playerOption, computerOption);
}

Map<String, GameStatus> getGameStatus(int playerOption, int computerOption) {
  if (playerOption == 1 && computerOption == 3) {
    return {
      'playerChoice': GameStatus.ROCK,
      'computerChoice': GameStatus.SCISSORS,
    };
  }

  if (playerOption == 1 && computerOption == 2) {
    return {
      'playerChoice': GameStatus.ROCK,
      'computerChoice': GameStatus.PAPER,
    };
  }

  if (playerOption == 2 && computerOption == 1) {
    return {
      'playerChoice': GameStatus.PAPER,
      'computerChoice': GameStatus.ROCK,
    };
  }

  if (playerOption == 2 && computerOption == 3) {
    return {
      'playerChoice': GameStatus.PAPER,
      'computerChoice': GameStatus.SCISSORS,
    };
  }

  if (playerOption == 3 && computerOption == 2) {
    return {
      'playerChoice': GameStatus.SCISSORS,
      'computerChoice': GameStatus.PAPER,
    };
  }

  if (playerOption == 3 && computerOption == 1) {
    return {
      'playerChoice': GameStatus.SCISSORS,
      'computerChoice': GameStatus.ROCK,
    };
  }

  if (playerOption == computerOption) {
    return {
      'playerChoice': GameStatus.TIE,
      'computerChoice': GameStatus.TIE,
    };
  } else {
    return {
      'playerChoice': GameStatus.ERROR,
      'computerChoice': GameStatus.ERROR,
    };
  }
}

void printGameResult(int playerOption, int computerOption) {
  Map<String, GameStatus> gameStatus =
      getGameStatus(playerOption, computerOption);

  GameStatus? playerChoice = gameStatus['playerChoice'];
  GameStatus? computerChoice = gameStatus['computerChoice'];

  switch (playerChoice) {
    case GameStatus.ROCK:
      switch (computerChoice) {
        case GameStatus.SCISSORS:
          print('You win!');
          break;
        case GameStatus.PAPER:
          print('You lose!');
          break;
        case GameStatus.ROCK:
          print('It\'s a tie!');
          break;
        default:
          print('Error');
      }
      break;
    case GameStatus.PAPER:
      switch (computerChoice) {
        case GameStatus.ROCK:
          print('You win!');
          break;
        case GameStatus.SCISSORS:
          print('You lose!');
          break;
        case GameStatus.PAPER:
          print('It\'s a tie!');
          break;
        default:
          print('Error');
      }
      break;
    case GameStatus.SCISSORS:
      switch (computerChoice) {
        case GameStatus.PAPER:
          print('You win!');
          break;
        case GameStatus.ROCK:
          print('You lose!');
          break;
        case GameStatus.SCISSORS:
          print('It\'s a tie!');
          break;
        default:
          print('Error');
      }
      break;
    default:
      print('Error');
  }
}
