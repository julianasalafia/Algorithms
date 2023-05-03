package d_while_loops

/*
    52) Create an algorithm that reads the age of 10 people, displaying at the end:
    a) What is the average age of the group b) How many people are over 18 years old
    c) How many people are under 5 years old d) What was the oldest age read
*/

fun main() {
    var counter = 1
    val ages = mutableListOf<Int>()
    var lessThanFive = 0
    var overEighteen = 0


    while (counter <= 10) {
        println("What's the person's number $counter age?")
        val age = readln().toInt()
        ages.add(age)

        if (age <= 5) {
            lessThanFive++
        }

        if (age >= 18) {
            overEighteen++
        }
        counter++
    }

    val olderAge = ages.maxOrNull()
    val average = ages.average().toInt()

    println("Average age: $average.")
    println("Over 18 years old: $overEighteen.")
    println("Under 5 years old: $lessThanFive.")
    println("Older age: $olderAge.")
}