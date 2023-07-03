// Write a program that reads the price of a product, calculates and shows its PROMOTIONAL PRICE, with a 5% discount.

import 'dart:io';

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    double productPrice = readDouble('product price: ');
    double percentage = readDouble('discount(%): ');

    if (percentage < 0 || percentage > 100) {
      print('Error: Discount percentage must be between 0 and 100');
    } else {
      promotionalPrice(productPrice, percentage);
    }
    stdout.write('do you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
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

double readDouble(String prompt) {
  double? value;

  do {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = double.tryParse(input!);
    if (value == null) {
      print('Error: Please enter a valid number');
    }
  } while (value == null);
  return value;
}
