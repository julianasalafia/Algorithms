/*
    The Body Mass Index (BMI) is a value calculated based on a person's height and weight. According to the BMI value,
    we can classify the individual within certain ranges.
    below 18.5: Underweight. between 18.5 and 25: Ideal weight.
    between 25 and 30: Overweight. between 30 and 40: Obesity. above 40: Morbid obesity.
    Note: The BMI is calculated by the expression weight/height² (weight divided by the square of the height)
*/

import 'dart:io';

enum BMICategory { UNDERWEIGHT, HEALTHY, OVERWEIGHT, OBESE, EXTREMELY_OBESE }

void main() {
  double height = readDouble('height: ');
  double weight = readDouble('weight: ');

  double bmi = calculateBMI(weight, height);
  bmiResults(bmi);
}

void bmiResults(double bmi) {
  BMICategory category;

  if (bmi >= 10 && bmi < 18.5) {
    category = BMICategory.UNDERWEIGHT;
  } else if (bmi >= 18.5 && bmi < 25) {
    category = BMICategory.HEALTHY;
  } else if (bmi >= 25 && bmi < 30) {
    category = BMICategory.OVERWEIGHT;
  } else if (bmi >= 30 && bmi < 40) {
    category = BMICategory.OBESE;
  } else {
    category = BMICategory.EXTREMELY_OBESE;
  }
  message(bmi, category);
}

double calculateBMI(double weight, double height) {
  height = height / 100;
  return weight / (height * height);
}

void message(double bmi, BMICategory category) {
  print('----------------------------------------');
  print('CATEGORY: ${category.toString().split('.').last}');
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
