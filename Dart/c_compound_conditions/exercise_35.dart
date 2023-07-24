/*
    A car rental company needs to charge for its services. Renting a popular car costs R$90 per day, and renting a luxury
    car costs R$150 per day. In addition, the customer pays for the distance traveled in kilometers. Write a program that
    reads the type of rented car (popular or luxury), the number of rental days, and the distance traveled in kilometers.
    At the end, show the price to be paid according to the following table:
    Popular cars (R$90 per day). Up to 100Km traveled: R$0.20 per Km. Above 100Km traveled: R$0.10 per Km.
    Luxury cars (R$150 per day). Up to 200Km traveled: R$0.30 per Km. Above 200Km traveled: R$0.25 per Km.
*/

import 'dart:io';

enum CarStatus { POPULAR, LUXURY }

void main() {
  late double price;

  int optionCar =
      readInt('which car do you want? \n1) popular car \n2) luxury car \n:: ');

  int days = readInt('rental days: ');
  int km = readInt('distance travelled: ');

  if (optionCar == 1) {
    if (km <= 100) {
      price = km * 0.20;
    } else {
      price = km * 0.10;
    }
  }

  if (optionCar == 2) {
    if (km <= 100) {
      price = km * 0.30;
    } else {
      price = km * 0.25;
    }
  }

  print(price);

  if (optionCar != 1 && optionCar != 2) {
    print('error');
  }
}

int readInt(String prompt) {
  int? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    if (value == null || value < 0) {
      print('Error: Please enter a valid number');
    }
  } while (value == null || value < 0);

  return value;
}
