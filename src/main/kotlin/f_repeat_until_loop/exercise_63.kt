package f_repeat_until_loop

/*
63) Create a program using the “repeat until” structure that reads several numbers. At each loop, ask the user
whether they want to continue or not. At the end, show on the screen:
a) The sum of all values
b) What was the smallest value entered
c) The average of all values
d) How many values are even
*/

import java.util.Locale.getDefault

fun main() {
    var sum = 0
    var smallestNumber = 0
    var counter = 0
    var evenNumber = 0

    do {
        print("Write a number: ")
        val number = readln().toInt()

        sum += number

        if (smallestNumber == 0 || smallestNumber > number) {
            smallestNumber = number
        }

        if (number % 2 == 0) {
            evenNumber++
        }

        print("Continue [Y/N]? ")
        val answer = readln().uppercase(getDefault())
        counter++
    } while (answer == "S")

    val average = sum / counter

    println("The sum of all numbers is $sum.")
    println("The smallest value is $smallestNumber.")
    println("The average of all values is $average.")
    println("$evenNumber is the quantity of even values.")
}