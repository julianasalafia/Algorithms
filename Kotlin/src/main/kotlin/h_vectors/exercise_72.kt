package h_vectors

/*
72) Create a program that automatically fills (using logic, not just assigning directly)
a numeric vector with 10 positions as follows:
| 5 | 10| 15| 20| 25| 30| 35| 40| 45| 50|
| 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
*/

fun main() {
    val vector = arrayOfNulls<Int>(10)

    for (i in vector.indices) {
        vector[i] = (i * 5) + 5
        print(" ${vector[i]} ")
    }

    println("\n_______________________________________")

    for (i in vector.indices) {
        print(" $i  ")
    }
}