package b_basic_conditions

/*
    [CHALLENGE] Create a program that reads the size of three line segments. Analyze their lengths and say
    if it is possible to form a triangle with these lines. Mathematically, for three segments to form a triangle,
    the length of each side must be less than the sum of the other two.
 */

fun main() {
    print("A: ")
    val a = readln().toInt()

    print("B: ")
    val b = readln().toInt()

    print("C: ")
    val c = readln().toInt()

    if ((a < (b + c)) && (b < (a + c)) && (c < (a + b))) {
        println("Triangle.")
    } else {
        println("Not a triangle.")
    }
}