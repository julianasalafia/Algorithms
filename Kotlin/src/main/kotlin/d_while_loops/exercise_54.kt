package d_while_loops

/*
    54) Develop an application that reads the weight and height of 7 people, displaying on the screen:
    a) What was the average height of the group b) How many people weigh more than 90Kg
    c) How many people who weigh less than 50Kg are under 1.60 d) How many people who are over 1.90m tall weigh more than 100Kg.
*/

import kotlin.math.roundToInt

fun main() {
    var counter = 1
    var heights = 0.0
    val averageHeight = mutableListOf<Double>()
    var greaterThan90 = 0
    var lessThan60and160 = 0
    var greaterThan90and100 = 0

    while (counter <= 7) {
        print("Person's $counter weight? ")
        val weight = readln().toDouble()

        print("How tall? ")
        val height = readln().toDouble()

        averageHeight.add(height)
        heights += height

        if (weight >= 90) {
            greaterThan90++
        }

        if (weight <= 50 && height <= 160) {
            lessThan60and160++
        }

        if (weight >= 100 && height >= 190) {
            greaterThan90and100++
        }
        counter++
    }

    println("Average height of the group: ${averageHeight.average().roundToInt()}.")
    println("Greater than 90kg: $greaterThan90.")
    println("Less than 50kg and less than 160cm: $lessThan60and160.")
    println("Greater than 90kg and greater than 100kg: $greaterThan90and100.")
}