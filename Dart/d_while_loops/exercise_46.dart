// 46) Create a program that calculates and displays the result of the sum between 6 + 8 + 10 + 12 + 14 + … + 98 + 100.

void main() {
  int startNumber = 6;

  int sum = calculateSum(startNumber);
  print('Sum: $sum');
}

int calculateSum(int number) {
  int sum = 0;
  int maxNumber = 100;
  int increment = 2;

  while (number <= maxNumber) {
    sum += number;
    number += increment;
  }

  return sum;
}
