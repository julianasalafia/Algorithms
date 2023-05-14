package h_vectors

/*
75) Create a program that automatically fills (using logic, not just assigning directly)
a numeric vector with 15 positions with the first elements of the Fibonacci sequence:
| 1 | 1 | 2 | 3 | 5 | 8 | 13| 21| 34| 55| 89|144|233|377|610|987|
| 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10| 11| 12| 13| 14| 15|
*/

fun main() {
    val vector = arrayOfNulls<Int>(15)
    vector[0] = 0
    vector[1] = 1

    print("${vector[0]} ${vector[1]} ")

    for (i in 2 until vector.size) {
        vector[i] = vector[i - 1]!! + vector[i - 2]!!
        print(" ${vector[i]} ")
    }
}