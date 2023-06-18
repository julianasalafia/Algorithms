package d_while_loops

import java.lang.Math.random

/*
    50) Develop a program that randomly generates 20 numbers between 0 and 10 and displays on the screen:
    a) Which numbers were drawn b) How many numbers are above 5 c) How many numbers are divisible by 3
*/

fun main() {
    var counter = 0
    val numbers = mutableListOf<Int>()
    var greaterThanFive = 0
    var divisibleByThree = 0

    while (counter < 20) {
        val number = (random() * 10 + 1).toInt()
        numbers.add(number)

        if (number > 5) {
            greaterThanFive++
        }

        if (number % 3 == 0) {
            divisibleByThree++
        }
        counter++
    }

    println("Drawn numbers: $numbers.")
    println("Numbers greater than 5: $greaterThanFive.")
    println("Numbers divisible by 3: $divisibleByThree.")
}