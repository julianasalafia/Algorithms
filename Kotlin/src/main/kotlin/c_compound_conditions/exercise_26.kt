package c_compound_conditions

// Write an algorithm that reads two integers and compares them, showing on the screen one of the messages below:
// The first value is greater. The second value is greater. There is no greater value, they are equal.

fun main() {
    print("1st number: ")
    val n1 = readln().toInt()

    print("2nd number: ")
    val n2 = readln().toInt()

    if (n1 > n2) {
        println("The first value $n1 is greater than the second value $n2.")
    } else if (n2 > n1) {
        println("The second value $n2 is greater than the first value $n1.")
    } else {
        println("The values are equal.")
    }
}