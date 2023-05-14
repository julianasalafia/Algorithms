package h_vectors

/*
71) Create a program that automatically fills a numeric vector with 8 positions as follows:
|999|999|999|999|999|999|999|999|
| 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
*/

fun main() {
    val vector = arrayOfNulls<Int>(8)

    for (i in vector.indices) {
        vector[i] = 999
        print("${vector[i]} ")
    }

    println("\n-------------------------------")

    for (i in vector.indices) {
        print(" $i  ")
    }
}