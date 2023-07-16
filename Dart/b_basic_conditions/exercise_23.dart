/*
     In an exclusive promotion for Women's Day, a store wants to give discounts to everyone, but especially to women.
     Create a program that reads the customer's name, gender, and purchase value and calculates the discounted price. Knowing that:
     Men receive a 5% discount
     Women receive a 13% discount
 */

import 'dart:io';

const int discountPercentageMale = 5;
const int discountPercentageFemale = 13;
String answer = 'yes';

void main() {
  do {
    stdout.write('what is your name? ');
    String name = stdin.readLineSync()!;

    stdout.write('purchase price: ');
    double purchasePrice = double.parse(stdin.readLineSync()!);

    print('gender:\n1) male\n2) female\n3) other');

    stdout.write(': ');
    int option = int.parse(stdin.readLineSync()!);

    double? discountValue = returnDiscountAmount(option, purchasePrice);

    if (discountValue != null) {
      finalPrice(name, discountValue);
    }

    stdout.write('do you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  } while (answer == 'yes');
}

double? returnDiscountAmount(int option, double? purchasePrice) {
  late double? discountValue;

  if (option == 1) {
    discountValue = discountPercentageMale * purchasePrice! / 100;
    return discountValue;
  }

  if (option == 2) {
    discountValue = discountPercentageFemale * purchasePrice! / 100;
    return discountValue;
  }

  if (option != 1 && option != 2) {
    print('not valid');
  }
}

void finalPrice(String name, double discountValue) {
  print('discount for $name: \$$discountValue');
}
