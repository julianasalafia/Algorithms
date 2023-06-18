package c_compound_conditions

import kotlin.random.Random

// [CHALLENGE] Create a game where the computer will draw a number between 1 and 5, and the player will try to guess the drawn value.

fun main() {
    val draw = Random.nextInt(1, 6)

    print("Type a number between 1 and 5: ")

    when (val number = readln().toInt()) {
        draw -> {
            println("Number: $number; drawn value: $draw.")
            println("You hit the drawn value.")
        }
        in 1..5 -> {
            println("Number: $number; drawn value: $draw.")
            println("Try again.")
        }
        else -> {
            println("Invalid.")
        }
    }
}