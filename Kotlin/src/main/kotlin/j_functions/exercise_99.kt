package j_functions

/*
99) Make a program that has a function called Power(), which will receive two numeric parameters
(base and exponent) and will calculate the exponentiation result.
Ex: Power(5,2) will calculate 52 = 25.
*/

fun main() {
    print("Base: ")
    val n1 = readln().toInt()

    print("Exponent: ")
    val n2 = readln().toInt()

    val power = calculatePower(n1, n2)
    println(power)
}

fun calculatePower(base: Int, exponent: Int): Int {
    var result = 1

    for (c in 1..exponent) {
        result *= base
    }
    return result
}
