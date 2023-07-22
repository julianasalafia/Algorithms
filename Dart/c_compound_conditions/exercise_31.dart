// [CHALLENGE] Create a Rock-Paper-Scissors game

import 'dart:io';
import 'dart:math';

enum GameStatus { ROCK, PAPER, SCISSORS, TIE, ERROR }

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    int playerOption =
        readInt('choose an option: \n1) rock \n2) paper \n3)scissors \n:: ');

    int computerOption = Random().nextInt(3) + 1;

    getGameStatus(playerOption, computerOption);
    printGameResult(playerOption, computerOption);

    stdout.write('do you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
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

  if (playerChoice == GameStatus.TIE) {
    print('It\'s a tie!');
    return;
  }

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

int readInt(String prompt) {
  int? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    if (value == null || value < 1 || value > 3) {
      print('Error: Please enter a valid number');
    }
  } while (value == null || value < 1 || value > 3);

  return value;
}
