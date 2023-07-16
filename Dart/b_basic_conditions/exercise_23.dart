/*
     In an exclusive promotion for Women's Day, a store wants to give discounts to everyone, but especially to women.
     Create a program that reads the customer's name, gender, and purchase value and calculates the discounted price. Knowing that:
     Men receive a 5% discount
     Women receive a 13% discount
 */

import 'dart:io';

const int discountPercentageMale = 5;
const int discountPercentageFemale = 13;

void main() {
  stdout.write('what is your name? ');
  String name = stdin.readLineSync()!;

  stdout.write('purchase price: ');
  double purchasePrice = double.parse(stdin.readLineSync()!);

  print('gender:\n1) male\n2) female\n3) other');

  stdout.write(': ');
  int option = int.parse(stdin.readLineSync()!);

  double discountValueMale = (discountPercentageMale * purchasePrice) / 100;
  double discountValueFemale = (discountPercentageFemale * purchasePrice) / 100;

  if (option == 1) {
    print('discount for $name: \$$discountValueMale');
  } else if (option == 2) {
    print('discount for $name: \$$discountValueFemale');
  } else if (option == 3) {
    print('User without discount, sign up.');
  } else {
    print('Invalid option.');
  }
}
