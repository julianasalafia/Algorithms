// Write an algorithm that reads how much money a person has in their wallet (in R$) and shows how many dollars they can buy. Consider US$1.00 = R$3.45.

import 'dart:io';

void main() {
  double exchangeRate = 3.45;
  double amount = getAmount();

  buyDollar(amount, exchangeRate);
}

double getAmount() {
  while (true) {
    stdout.write('Amount: R\$');
    String? input = stdin.readLineSync();

    if (input != null) {
      try {
        return double.parse(input);
      } catch (exception) {
        print('Error: Please enter a valid integer');
      }
    }
  }
}

void buyDollar(double amount, double exchangeRate) {
  String _amount = amount.toStringAsFixed(2);

  double dollar = amount / exchangeRate;
  String _dollar = dollar.round().toStringAsFixed(2);

  print(
      'You have R\$$_amount, the exchange rate is R$exchangeRate and you can buy US\$${_dollar}.');
}
