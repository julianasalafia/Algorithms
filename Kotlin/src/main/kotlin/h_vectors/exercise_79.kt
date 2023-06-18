package h_vectors

/*
79) Develop a program that reads 10 integer numbers and stores them in an array.
In the end, show which are the even numbers that were entered and in which positions they are stored.
*/

fun main() {
    val numbers = arrayOfNulls<Int>(10)
    val evenVector = mutableListOf<Int>()
    var evenNumber = 0

    for (index in numbers.indices) {
        print("Number ${index + 1}: ")
        numbers[index] = readln().toInt()
    }

    for (index in numbers.indices) {
        if (numbers[index]!! % 2 == 0) {
            evenNumber++
            evenVector.add(index)
        }
    }
    println("Even numbers typed: $evenNumber.")
    println("Positions: ${evenVector.joinToString()}.")
}