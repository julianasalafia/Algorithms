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

const double perDayPopular = 90.0;
const double perDayLuxury = 150.0;

const double popularPriceUpTo100 = 0.20;
const double luxuryPriceUpTo100 = 0.10;

const double popularPriceAbove100 = 0.30;
const double luxuryPriceAbove100 = 0.25;

const int popularLimit = 100;
const int luxuryLimit = 200;

void main() {
  String answer = 'yes';
  late CarStatus? category;

  while (answer == 'yes') {
    do {
      int optionCar = readInt(
          'which car do you want? \n1) popular car \n2) luxury car \n:: ');
      category = setCarCategory(optionCar);
    } while (category == null);

    int days = readInt('rental days: ');
    int km = readInt('distance travelled: ');

    double price = setPrice(days, km, category);
    message(category, days, km, price);

    stdout.write('\ndo you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
}

double setPrice(int days, int km, CarStatus category) {
  double price;

  switch (category) {
    case CarStatus.POPULAR:
      if (km <= popularLimit) {
        price = (days * perDayPopular) + (km * popularPriceUpTo100);
      } else {
        price = (days * perDayPopular) + (km * popularPriceAbove100);
      }
      break;
    case CarStatus.LUXURY:
      if (km <= luxuryLimit) {
        price = (days * perDayLuxury) + (km * luxuryPriceUpTo100);
      } else {
        price = (days * perDayLuxury) + (km * luxuryPriceAbove100);
      }
      break;
  }
  return price;
}

CarStatus? setCarCategory(int optionCar) {
  CarStatus? category;

  switch (optionCar) {
    case 1:
      category = CarStatus.POPULAR;
      break;
    case 2:
      category = CarStatus.LUXURY;
      break;
    default:
      return null;
  }
  return category;
}

void message(CarStatus category, int days, int km, double price) {
  print(
      'category: ${category.toString().split('.').last} — km: $km — days: $days — price US\$: ${price.toStringAsFixed(2)}');
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
