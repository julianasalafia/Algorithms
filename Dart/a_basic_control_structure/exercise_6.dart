// Write a program that reads an integer and displays its predecessor and successor.

import 'dart:io';

void main() {
  tryAgain();
}

void predecessorAndSucessor(int number) {
  int predecessor = number - 1;
  int successor = number + 1;

  print(
    'the predecessor of $number is $predecessor; the successor of $number is $successor.',
  );
}

void tryAgain() {
  String answer;

  do {
    stdout.write('write a number: ');
    try {
      int number = int.parse(stdin.readLineSync()!);
      predecessorAndSucessor(number);
    } catch (exception) {
      print('Error: Please enter a valid integer');
    }

    stdout.write('do you want to try again? ');
    answer = stdin.readLineSync()!;
  } while (answer.toLowerCase() == 'yes');
}
