/*
    The car rental company needs your help to charge for its services. Write a program that asks for the number of
    kilometers traveled by a rented car and the number of days it was rented for.
    Calculate the total price to be paid, knowing that the car costs R$90 per day and R$0.20 per kilometer driven.
 */

import 'dart:io';

void main() {
  stdout.write('km travelled: ');
  double kmTravelled = double.parse(stdin.readLineSync()!);

  stdout.write('days rented: ');
  int daysRented = int.parse(stdin.readLineSync()!);

  double km = kmTravelled * 0.20;
  int days = daysRented * 90;

  double totalPrice = km + days;

  print(
      'km travelled: $kmTravelled, days rented: $daysRented, total price: ${totalPrice.toStringAsFixed(2)}');
}
