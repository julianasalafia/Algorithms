package a_basic_control_structures

// Write a program that reads an integer and displays its predecessor and successor.

fun main() {
    print("Write a number: ")
    val number = readln().toInt()

    val predecessor = number - 1
    val successor = number + 1

    println("The predecessor of $number is $predecessor; the successor of $number is $successor.")
}