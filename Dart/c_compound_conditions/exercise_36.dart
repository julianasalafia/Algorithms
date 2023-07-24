/*
    A healthy lifestyle program wants to reward physical activity with points that can be exchanged for money. The system works as follows:
    Each hour of physical activity in the month is worth points. Up to 10 hours of activity in the month: earns 2 points per hour.
    From 10 to 20 hours of activity in the month: earns 5 points per hour. Above 20 hours of activity in the month: earns 10 points per hour.
    For every point earned, the customer earns R$0.05 (5 cents) Write a program that reads how many hours of physical activity a person had
    in a month, calculates and shows how many points they earned and how much money they were able to earn.
*/

import 'dart:io';

enum ActivityStatus { LIGHT, MODERATE, HEAVY }

void main() {
  stdout.write('How many hours of physical activity did you had in a month? ');
  double hoursOfActivity = double.parse(stdin.readLineSync()!);

  ActivityStatus? activityStatus = setActivityStatus(hoursOfActivity);
  double bonus = calculateBonus(activityStatus!, hoursOfActivity);
  message(activityStatus, hoursOfActivity, bonus);
}

double calculateBonus(ActivityStatus category, double hoursOfActivity) {
  double points;
  double bonus = 0.05;

  switch (category) {
    case ActivityStatus.LIGHT:
      points = 2;
      break;
    case ActivityStatus.MODERATE:
      points = 5;
      break;
    case ActivityStatus.HEAVY:
      points = 10;
      break;
  }
  points = hoursOfActivity * points;
  bonus = points * 0.05;

  return bonus;
}

ActivityStatus? setActivityStatus(double hoursOfActivity) {
  ActivityStatus? activityStatus;

  if (hoursOfActivity >= 0 && hoursOfActivity < 10) {
    return activityStatus = ActivityStatus.LIGHT;
  }

  if (hoursOfActivity >= 10 && hoursOfActivity < 20) {
    return activityStatus = ActivityStatus.MODERATE;
  }

  if (hoursOfActivity >= 20) {
    return activityStatus = ActivityStatus.HEAVY;
  }
  return activityStatus;
}

void message(
    ActivityStatus? activityStatus, double hoursOfActivity, double bonus) {
  print(
      '${activityStatus.toString().split('.').last}: You did $hoursOfActivity hours of physical activity and earned US\$$bonus.');
}
