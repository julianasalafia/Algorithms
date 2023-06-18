package j_functions

/*
97) Redo exercise 91, but now in the form of a function called Biggest(), but make an adaptation
that will receive THREE numbers as parameters and will return which one was the biggest among them.
*/

fun main() {
    print("Number 1: ")
    val n1 = readln().toInt()

    print("Number 2: ")
    val n2 = readln().toInt()

    print("Number 3: ")
    val n3 = readln().toInt()

    val greatestNumber = findGreatest(n1, n2, n3)
    println(greatestNumber)
}

fun findGreatest(a: Int, b: Int, c: Int): String {
    return if (a > b && a > c) {
        "$a is greater than $b and $c."
    } else if (b > a && b > c) {
        "$b is greater than $a and $c."
    } else {
        "$c is greater than $a and $b."
    }
}
