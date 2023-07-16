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
    String name = readString('what is your name? ');
    double purchasePrice = readDouble('purchase price: ');

    print('gender:\n1) male\n2) female\n3) other');

    double userOption = readDouble(': ');
    int option = userOption.toInt();

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
    print('discount not available. please, sign up.');
  }
}

void finalPrice(String name, double discountValue) {
  print('discount for $name: \$$discountValue');
}

double readDouble(String prompt) {
  double? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = double.tryParse(input!);

    if (value == null || value < 0) {
      print('Error: Please enter a valid amount');
    }
  } while (value == null || value < 0);
  return value;
}

String readString(String prompt) {
  String? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = input!;

    if (value == null || !value.contains(RegExp(r'^[a-zA-Z\s]+$'))) {
      print('Error: Please enter a valid string');
    }
  } while (value == null || !value.contains(RegExp(r'^[a-zA-Z\s]+$')));

  return value;
}
