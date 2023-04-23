package a_basic_control_structures

// Create an algorithm that reads a real number and displays its double and its third part on the screen.

fun main() {
    print("Write a number: ")
    val number = readln().toDouble()

    val double = number * 2
    val thirdPart = number / 3

    val _thirdPart = String.format("%.2f", thirdPart)

    println("The double of $number is $double. \nThe third part of $number is $_thirdPart.")
}