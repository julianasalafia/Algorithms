/*
    A healthy lifestyle program wants to reward physical activity with points that can be exchanged for money. The system works as follows:
    Each hour of physical activity in the month is worth points. Up to 10 hours of activity in the month: earns 2 points per hour.
    From 10 to 20 hours of activity in the month: earns 5 points per hour. Above 20 hours of activity in the month: earns 10 points per hour.
    For every point earned, the customer earns R$0.05 (5 cents) Write a program that reads how many hours of physical activity a person had
    in a month, calculates and shows how many points they earned and how much money they were able to earn.
*/

import 'dart:io';

enum ActivityStatus { LIGHT, MODERATE, HEAVY }

const earnedBonus = 0.05;

void main() {
  String answer = 'yes';

  while (answer == 'yes') {
    double hoursOfActivity = readDouble(
        'How many hours of physical activity did you had in a month? ');
    ActivityStatus? activityStatus = setActivityStatus(hoursOfActivity);
    List<double> bonus =
        calculateBonus(activityStatus!, hoursOfActivity, earnedBonus);
    message(activityStatus, hoursOfActivity, bonus);

    stdout.write('\ndo you want to try again? ');
    answer = stdin.readLineSync()!.toLowerCase();
  }
}

List<double> calculateBonus(
    ActivityStatus category, double hoursOfActivity, double bonus) {
  const pointsMap = {
    ActivityStatus.LIGHT: 2,
    ActivityStatus.MODERATE: 5,
    ActivityStatus.HEAVY: 10,
  };

  double points = pointsMap[category]!.toDouble();
  points *= hoursOfActivity;
  bonus *= points;

  return [points, bonus];
}

ActivityStatus? setActivityStatus(double hoursOfActivity) {
  if (hoursOfActivity >= 0 && hoursOfActivity < 10) {
    return ActivityStatus.LIGHT;
  }

  if (hoursOfActivity >= 10 && hoursOfActivity < 20) {
    return ActivityStatus.MODERATE;
  }

  if (hoursOfActivity >= 20) {
    return ActivityStatus.HEAVY;
  }
}

void message(ActivityStatus? activityStatus, double hoursOfActivity,
    List<double> bonus) {
  print(
      '${activityStatus.toString().split('.').last}: You did $hoursOfActivity hours of physical activity and earned ${bonus.first} points and US\$${bonus.last.toStringAsFixed(2)}.');
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
