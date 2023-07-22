/*
  Write a program to approve or deny a bank loan to buy a house. The program will ask for the house value, the buyer's
  salary, and in how many years he/she will pay. Calculate the monthly payment value, knowing that it cannot exceed
  30% of the salary, otherwise the loan will be denied.
*/

import 'dart:io';

enum LoanStatus { approved, refused }

const percentage = 30;

void main() {
  double homePrice = readDouble('home price: ');
  double buyerSalary = readDouble('buyer\'s salary: ');
  double yearsPayment = readDouble('payment years: ');

  double monthlyPayment = calculateMonthlyPayment(homePrice, yearsPayment);
  double loanLimit = calculateLoanLimit(buyerSalary);

  LoanStatus status = setLoanStatus(monthlyPayment, loanLimit);
  printLoanStatus(status, loanLimit, buyerSalary, monthlyPayment);
}

void printLoanStatus(LoanStatus status, double loanLimit, double buyerSalary,
    double monthlyPayment) {
  String approvedMessage = '------------- APPROVED -------------';
  String deniedMessage = '-------------- DENIED --------------';
  String divisor = '------------------------------------';
  String message =
      'Limit: U\$${loanLimit.toStringAsFixed(2)} \nSalary: U\$${buyerSalary.toStringAsFixed(2)}\nMonth Payment: U\$${monthlyPayment.toStringAsFixed(2)}';

  if (status == LoanStatus.approved) {
    print('$approvedMessage \n $message \n$divisor');
  } else {
    print('$deniedMessage \n$message \n$divisor');
  }
}

LoanStatus setLoanStatus(double monthlyPayment, double loanLimit) {
  LoanStatus status =
      monthlyPayment <= loanLimit ? LoanStatus.approved : LoanStatus.refused;
  return status;
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
