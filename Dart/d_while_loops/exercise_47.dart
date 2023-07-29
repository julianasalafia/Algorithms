// 47) Develop an application that displays the result of the expression 500 + 450 + 400 + 350 + 300 + … + 50 + 0 on the screen.

void main() {
  int startNumber = 500;
  int sum = calculateSum(startNumber);
  print('Sum: $sum.');
}

int calculateSum(int number) {
  int sum = 0;

  int minNumber = 0;
  int decrement = 50;

  while (number >= minNumber) {
    sum += number;
    number -= decrement;
  }

  return sum;
}
