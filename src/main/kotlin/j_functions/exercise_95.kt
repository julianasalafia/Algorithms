package j_functions

/*
95) Redo exercise 90, but now in the form of a function called Sum(),
which will receive two parameters and will return the sum result between them to the main program.
*/

fun main() {
    print("Enter the first value: ")
    val v1 = readln().toInt()

    print("Enter the second value: ")
    val v2 = readln().toInt()

    val result = adder(v1, v2)
    println("The sum of the values is $result.")
}

fun adder(a: Int, b: Int): Int {
    return a + b
}
