// Write a program to approve or deny a bank loan to buy a house. The program will ask for the house value, the buyer's
// salary, and in how many years he/she will pay. Calculate the monthly payment value, knowing that it cannot exceed
// 30% of the salary, otherwise the loan will be denied.

import 'dart:io';

const percentage = 30;

void main() {
  double homePrice = readDouble('home price: ');
  double buyerSalary = readDouble('buyer\'s salary: ');
  double yearsPayment = readDouble('payment years: ');

  double monthlyPayment = calculateMonthlyPayment(homePrice, yearsPayment);
  double loanLimit = calculateLoanLimit(buyerSalary);

  if (monthlyPayment <= loanLimit) {
    print('------------- APPROVED -------------');
    print('Limit: R\$$loanLimit');
    print('Salary: R\$$buyerSalary');
    print('Month Payment: R\$$monthlyPayment');
    print('----------------------------------------');
  } else {
    print('------------- REFUSED -------------');
    print('Limit: R\$$loanLimit');
    print('Salary: R\$$buyerSalary');
    print('Month Payment: R\$$monthlyPayment');
    print('----------------------------------------');
  }
}

double calculateLoanLimit(double buyerSalary) {
  double loanLimit = (buyerSalary * percentage) / 100;
  return loanLimit;
}

double calculateMonthlyPayment(double homePrice, double yearsPayment) {
  double monthlyPayment = homePrice / (yearsPayment * 12);
  return monthlyPayment;
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
