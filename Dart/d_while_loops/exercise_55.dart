import 'dart:io';
import 'dart:math';

enum DrawStatus { ODD, EVEN }

void main() {
  Map<String, int> getNumber = getNumbers();
  DrawStatus status = drawStatus(getNumber);
  printMessage(status, getNumber);
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
  int computerDraw = Random().nextInt(5) + 1;
  int playerChoice = readInt('\nType a number between 1 and 5: ');

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

    if (value == null || value < 1 || value > 5) {
      print('Error: Please enter a valid number.');
    }
  } while (value == null || value < 1 || value > 5);

  return value;
}

void printMessage(DrawStatus status, Map<String, int> numbers) {
  String divider = '============================';
  if (status == DrawStatus.EVEN) {
    stdout.write(
        '$divider\nYOU GUESSED IT!\nNumber: ${numbers['playerChoice']} — Drawn value: ${numbers['computerDraw']}.\n$divider\n');
  } else {
    stdout.write(
        '$divider\nWRONG GUESS!\nNumber: ${numbers['playerChoice']} — Drawn value: ${numbers['computerDraw']}.\n$divider\n');
  }
}
