/*
    The car rental company needs your help to charge for its services. Write a program that asks for the number of
    kilometers traveled by a rented car and the number of days it was rented for.
    Calculate the total price to be paid, knowing that the car costs R$90 per day and R$0.20 per kilometer driven.
 */

import 'dart:io';

const double KM_PRICE = 0.20;
const int DAY_PRICE = 90;

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    double kmTravelled = getDoubleInput('km travelled: ');
    int daysRented = getIntInput('days rented: ');

    calculatePrice(kmTravelled, daysRented);

    stdout.write('do you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
}

void calculatePrice(double kmTravelled, int daysRented) {
  double km = kmTravelled * KM_PRICE;
  int days = daysRented * DAY_PRICE;

  double totalPrice = km + days;

  print(
    'km travelled: $kmTravelled, days rented: $daysRented, total price: US\$${totalPrice.toStringAsFixed(2)}',
  );
}

double getDoubleInput(String prompt) {
  double? value;

  while (value == null) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = double.tryParse(input!);
    if (value == null) {
      print('Error: Please enter a valid number');
    }
  }
  return value;
}

int getIntInput(String prompt) {
  int? value;

  while (value == null) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);
    if (value == null) {
      print('Error: Please enter a valid number');
    }
  }
  return value;
}
