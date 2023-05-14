package g_for_loop

import java.util.Locale.getDefault
/*
    68) Create a program that reads the sex and weight of 8 people, using the “for” structure. At the end, show on the screen:
    a) How many women were registered
    b) How many men weigh more than 100kg
    c) The average weight among women
    d) The heaviest weight among men
*/

fun main() {
    var quantityWomen = 0
    var sumWeightWomen = 0.0
    var quantityMen100kgM = 0
    var greatestWeightMan = 0.0

    for (counter in 1..8) {
        print("Gender [M/F]: ")
        val gender = readln().uppercase(getDefault())

        print("Weight (kg): ")
        val kg = readln().toDouble()
        println("--------------------------------")

        if (gender == "M") {
            if (kg >= 100) {
                quantityMen100kgM++
            }

            if (greatestWeightMan < kg) {
                greatestWeightMan = kg
            }
        }

        if (gender == "F") {
            quantityWomen++
            sumWeightWomen += kg
        }
    }

    val averageWeightWomen = sumWeightWomen / quantityWomen
    val _averageWeightWomen = String.format("%.2f", averageWeightWomen)

    println("Number of registered women: $quantityWomen.")
    println("The average weight among women is ${_averageWeightWomen}kg.")
    println("Number of men weighing over 100kg: $quantityMen100kgM.")
    println("The heaviest weight among men is ${greatestWeightMan}kg.")
}