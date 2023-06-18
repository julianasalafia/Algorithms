// Write a program that reads a person's name and displays a welcome message for them.

import 'dart:io';

void main() {
  stdout.write('what\'s your name? ');
  String? name = stdin.readLineSync();

  print('hello $name, it\'s nice to meet you.');
}
