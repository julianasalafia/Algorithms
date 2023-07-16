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
    String name = readString('What is your name? ').capitalize();
    double purchasePrice = readDouble('Purchase price: ');

    print('Gender:\n1) Male\n2) Female\n3) Other');

    double userOption = readDouble(': ');
    int option = userOption.toInt();

    double? discountValue = returnDiscountAmount(option, purchasePrice);

    if (discountValue != null) {
      finalPrice(name, discountValue, purchasePrice);
    }

    stdout.write('Do you want to try again? ');
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
    print('Discount not available. Please, sign up.');
  }
}

void finalPrice(String name, double discountValue, purchasePrice) {
  double finalPriceToUser = purchasePrice - discountValue;
  print(
      'Discount for $name: \$${discountValue.toStringAsFixed(2)}. Final price: \$${finalPriceToUser.toStringAsFixed(2)}');
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

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
