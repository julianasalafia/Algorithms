// 51) Make an application that reads the price of 8 products.
// At the end, display on the screen what was the highest and lowest price entered.

import 'dart:io';
import 'dart:math';

const times = 8;

void main() {
  List<double> vector = readPrices();
  Map<String, double> minAndMaxPrices = getMinAndMaxPrices(vector);
  message(minAndMaxPrices);
}

Map<String, double> getMinAndMaxPrices(List<double> vector) {
  double minPrice = vector.reduce(min);
  double maxPrice = vector.reduce(max);

  return {'minPrice': minPrice, 'maxPrice': maxPrice};
}

List<double> readPrices() {
  int counter = 1;
  List<double> prices = [];

  while (counter <= times) {
    double price = readDouble('$counter) Product price: ');
    prices.add(price);
    counter++;
  }

  return prices;
}

void message(Map<String, double> minAndMaxPrices) {
  print(
      'The biggest price is \$${minAndMaxPrices['maxPrice']?.toStringAsFixed(2)}. \nThe lowest price is \$${minAndMaxPrices['minPrice']?.toStringAsFixed(2)}.');
}

double readDouble(String prompt) {
  double? value;

  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    value = double.tryParse(input!);

    if (value != null && value >= 0) {
      return value;
    } else {
      print('Error: Please enter a valid number.');
    }
  }
}
