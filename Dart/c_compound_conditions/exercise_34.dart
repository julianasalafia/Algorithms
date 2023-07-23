/*
    The Body Mass Index (BMI) is a value calculated based on a person's height and weight. According to the BMI value,
    we can classify the individual within certain ranges.
    below 18.5: Underweight. between 18.5 and 25: Ideal weight.
    between 25 and 30: Overweight. between 30 and 40: Obesity. above 40: Morbid obesity.
    Note: The BMI is calculated by the expression weight/height² (weight divided by the square of the height)
*/

import 'dart:io';

void main() {
  double height = readDouble('height: ');
  double weight = readDouble('weight: ');

  double bmi = calculateBMI(weight, height);
  bmiResults(bmi);
}

void bmiResults(double bmi) {
  if (bmi >= 10 && bmi < 18.5) {
    message(bmi, 'UNDERWEIGHT');
  }
  if (bmi >= 18.5 && bmi < 25) {
    message(bmi, 'HEALTHY');
  }
  if (bmi >= 25 && bmi < 30) {
    message(bmi, 'OVERWEIGHT');
  }
  if (bmi >= 30 && bmi < 40) {
    message(bmi, 'OBESE');
  }
  if (bmi >= 40) {
    message(bmi, 'EXTREMELY OBESE');
  }
}

double calculateBMI(double weight, double height) {
  height = height / 100;
  return weight / (height * height);
}

String? message(double bmi, String bmiCategory) {
  print('----------------------------------------');
  print('CATEGORY: $bmiCategory');
  print('BMI: $bmi');
  print('----------------------------------------');
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
