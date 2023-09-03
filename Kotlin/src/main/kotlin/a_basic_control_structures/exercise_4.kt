package a_basic_control_structures

import ConsoleUtils

// Develop an algorithm that reads two integers and displays the sum between them.

fun main() {
    val utils = ConsoleUtils()
    val value1 = utils.readInt("1st value: ")
    val value2 = utils.readInt("2nd value: ")
    val result = value1.plus(value2)

    println("The sum between $value1 and $value2 is $result.")
}