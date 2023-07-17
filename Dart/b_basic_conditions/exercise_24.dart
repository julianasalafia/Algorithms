/*
    Create an algorithm that asks for the distance a passenger wishes to travel in Km.
    Calculate the ticket price, charging R$0.50 per Km for trips up to 200Km and R$0.45 for longer trips.
 */

import 'dart:io';

void main() {
  stdout.write('Planned distance: ');
  double plannedDistance = double.parse(stdin.readLineSync()!);

  if (plannedDistance > 0 && plannedDistance <= 200) {
    double price = plannedDistance * 0.50;

    print('Distance: $plannedDistance. Price: $price');
  } else {
    double price = plannedDistance * 0.45;

    print('Distance: $plannedDistance. Price: $price');
  }
}
