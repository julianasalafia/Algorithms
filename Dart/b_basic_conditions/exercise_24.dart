/*
    Create an algorithm that asks for the distance a passenger wishes to travel in Km.
    Calculate the ticket price, charging R$0.50 per Km for trips up to 200Km and R$0.45 for longer trips.
 */

import 'dart:io';

const priceUnder200km = 0.50;
const priceAbove200km = 0.45;

void main() {
  double plannedDistance = readDouble('Planned distance: ');

  if (plannedDistance > 0 && plannedDistance <= 200) {
    double price = plannedDistance * priceUnder200km;

    print('Distance: $plannedDistance. Price: ${price.toStringAsFixed(2)}');
  } else {
    double price = plannedDistance * priceAbove200km;

    print('Distance: $plannedDistance. Price: ${price..toStringAsFixed(2)}');
  }
}

double readDouble(String prompt) {
  double? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = double.tryParse(input!);

    if (value == null || value < 0) {
      print('Error: Please enter a valid distance');
    }
  } while (value == null || value < 0);
  return value;
}
