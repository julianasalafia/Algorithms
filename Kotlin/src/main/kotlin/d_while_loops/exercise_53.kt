package d_while_loops

/*
    53) Make a program that reads the age and gender of 5 people, displaying at the end:
    a) How many men were registered b) How many women were registered
    c) The average age of the group d) The average age of men e) How many women are over 20 years old
*/

fun main() {
    var counter = 1
    val ages = mutableListOf<Int>()
    var male = 0
    var female = 0
    var womenOverTwenty = 0
    var sumAgeMale = 0

    while (counter <= 5) {
        print("What's the person's number $counter age? ")
        val age = readln().toInt()
        ages.add(age)

        print("What's the gender [M/F]? ")
        val gender = readln()

        if (gender == "M") {
            male++
            sumAgeMale += age
        }

        if (gender == "F") {
            female++
        }

        if (gender == "F" && age >= 20) {
            womenOverTwenty++
        }
        counter++
    }

    val averageAgeMen = sumAgeMale / male

    println("Registered men: $male.")
    println("Registered women: $female.")
    println("Average age of the group: ${ages.average().toInt()}.")
    println("Average age of men: $averageAgeMen.")
    println("Women over 20 years old: $womenOverTwenty.")
}