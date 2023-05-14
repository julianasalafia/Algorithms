package h_vectors

/*
74) Create a program that automatically fills (using logic, not just assigning directly)
a numeric vector with 10 positions as follows:
| 5 | 3 | 5 | 3 | 5 | 3 | 5 | 3 | 5 | 3 |
| 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
*/

fun main() {
    val vector = arrayOfNulls<Int>(10)

    for (i in vector.indices) {
        if (i % 2 == 0) {
            print(" 5  ")
        } else {
            print(" 3  ")
        }
    }

    println("\n_______________________________________")
    for (i in vector.indices) {
        print(" $i  ")
    }
}
