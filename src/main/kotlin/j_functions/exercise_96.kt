package j_functions

/*
96) Create a program that has a function called Average(), which will
receive a student's 2 grades and return their average to the main program.
*/

fun main() {
    print("Grade 1: ")
    val n1 = readln().toDouble()

    print("Grade 2: ")
    val n2 = readln().toDouble()

    val average = average(n1, n2)
    println("The average is $average.")
}

fun average(a: Double, b: Double): Double {
    return (a + b) / 2
}
