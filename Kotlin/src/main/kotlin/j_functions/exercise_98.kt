package j_functions

/*
98) Create a program that has a function called SuperAdder(), which will receive two numbers
as parameters and then will return the sum of all values in the range between the received values.
Ex:
SuperAdder(1, 6) will add 1 + 2 + 3 + 4 + 5 + 6 and will return 21.
SuperAdder(15, 19) will add 15 + 16 + 17 + 18 + 19 and will return 85.
*/

fun main() {
    print("Number 1: ")
    val n1 = readln().toInt()

    print("Number 2: ")
    val n2 = readln().toInt()

    val sum = superAdder(n1, n2)
    println(sum)
}

fun superAdder(a: Int, b: Int): Int {
    var sum = 0

    for (c in a..b) {
        sum += c
    }
    return sum
}
