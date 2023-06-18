package f_repeat_until_loop

/*
    62) Make a program using the “repeat until” structure that reads the age of several people. At each loop,
    you should ask the user whether or not they want to continue entering data. At the end, when the user decides
    to stop, show on the screen:
    a) How many ages were entered
    b) What is the average of the entered ages
    c) How many people are 21 years old or older
*/

import java.util.Locale.getDefault

fun main() {
    var counter = 1
    var sumAges = 0
    var over21 = 0

    do {
        print("What is the age of person $counter? ")
        val age = readln().toInt()

        print("Do you want to register more ages [Y/N]? ")
        val answer = readln().uppercase(getDefault())

        sumAges += age

        if (age >= 21) {
            over21++
        }

        counter++
    } while (answer == "Y")

    val average = sumAges / (counter - 1)

    println("$counter ages have been registered.")
    println("The average of the ages is $average.")
    println("$over21 people are 21 years old or older.")
}