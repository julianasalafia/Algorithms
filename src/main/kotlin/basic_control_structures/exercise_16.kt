package basic_control_structures

// [CHALLENGE] Write a program to calculate the reduction in a smoker's lifetime.
// Ask for the number of cigarettes smoked per day and how many years they have smoked.
// Consider that a smoker loses 10 minutes of life for each cigarette.
// Calculate how many days of life a smoker will lose and display the total in days.
fun smokersLifetime() {
    val timeLostByCigar = 10 / 60.0

    print("Cigarettes smoked per day: ")
    val smokedPerDay = readln().toInt()

    print("Years smoking: ")
    val yearsSmoking = readln().toInt()

    val totalTimeLost = smokedPerDay * timeLostByCigar * 365 * yearsSmoking
    val daysLost = (totalTimeLost / 24).toInt()

    println("Cigarettes smoked per day: $smokedPerDay; years smoking: $yearsSmoking; days lost: $daysLost")
}