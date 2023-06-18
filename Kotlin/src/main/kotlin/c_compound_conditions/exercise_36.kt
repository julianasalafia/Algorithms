package c_compound_conditions

/*
    A healthy lifestyle program wants to reward physical activity with points that can be exchanged for money. The system works as follows:
    Each hour of physical activity in the month is worth points. Up to 10 hours of activity in the month: earns 2 points per hour.
    From 10 to 20 hours of activity in the month: earns 5 points per hour. Above 20 hours of activity in the month: earns 10 points per hour.
    For every point earned, the customer earns R$0.05 (5 cents) Write a program that reads how many hours of physical activity a person had
    in a month, calculates and shows how many points they earned and how much money they were able to earn.
*/

fun main() {
    print("How many hours of physical activity did you had in a month? ")
    val hoursActivity = readln().toDouble()

    if (hoursActivity < 10) {
        val score = (hoursActivity * 2).toInt()

        val bonus = score * 0.05
        val _bonus = String.format("%.2f", bonus)

        return println("You did $hoursActivity hours of physical activity and earned $score points and R$$_bonus.")
    }

    else if (hoursActivity >= 10 && hoursActivity < 20) {
        val score = (hoursActivity * 5).toInt()

        val bonus = score * 0.05
        val _bonus = String.format("%.2f", bonus)

        return println("You did $hoursActivity hours of physical activity and earned $score points and R$$_bonus.")
    }

    else if (hoursActivity >= 20) {
        val score = (hoursActivity * 10).toInt()

        val bonus = score * 0.05
        val _bonus = String.format("%.2f", bonus)

        return println("You did $hoursActivity hours of physical activity and earned $score points and R$$_bonus.")
    }

    else {
        println("Invalid.")
    }
}