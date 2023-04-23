package b_basic_conditions

// Create a program that reads a person's birth year, calculates their age, and then shows whether they can vote.

fun main() {
    val currentYear = 2023

    print("Birth year: ")
    val birthYear = readln().toInt()

    val age = currentYear - birthYear

    if (age >= 18) {
        println("You can vote!")
    } else {
        println("You can't vote!")
    }
}