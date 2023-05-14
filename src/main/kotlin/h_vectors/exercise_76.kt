package h_vectors

import kotlin.random.Random
/*
76) Create a program that automatically fills a numeric array with 7 randomly generated numbers
by the computer and then displays the generated values on the screen.
*/

fun main() {
    val values = arrayOfNulls<Int>(7)

    for (i in values.indices) {
        values[i] = Random.nextInt(100)
    }
    println(values.contentToString())
}