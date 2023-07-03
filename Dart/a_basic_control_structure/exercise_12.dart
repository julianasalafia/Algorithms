// Write a program that reads the price of a product, calculates and shows its PROMOTIONAL PRICE, with a 5% discount.

import 'dart:io';

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    try {
      stdout.write('product price: ');
      double productPrice = double.parse(stdin.readLineSync()!);

      stdout.write('discount(%): ');
      double percentage = double.parse(stdin.readLineSync()!);

      promotionalPrice(productPrice, percentage);

      stdout.write('do you want to try again? ');
      answer = stdin.readLineSync()!.toLowerCase();
    } catch (exception) {
      print('Error: Please enter a valid integer');
    }
  }
}

double promotionalPrice(double productPrice, double percentage) {
  double convertedValue = percentage / 100;
  double discountValue = productPrice * convertedValue;
  double finalPrice = productPrice - discountValue;

  print(
      'Product price: US\$${productPrice.toStringAsFixed(2)}, discount: US\$${discountValue.toStringAsFixed(2)}, final price: US\$${finalPrice.toStringAsFixed(2)}');

  return finalPrice;
}
