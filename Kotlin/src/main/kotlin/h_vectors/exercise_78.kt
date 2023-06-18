package h_vectors

/*
78) Write a program that reads 15 numbers and stores them in an array.
At the end, display the entire array on the screen and then show in which positions
values that are multiples of 10 were entered.
*/

fun main() {
    val numbers = arrayOfNulls<Int>(15)

    for (index in numbers.indices) {
        print("Number ${index + 1}: ")
        numbers[index] = readln().toInt()
    }

    for (index in numbers.indices) {
        if (numbers[index]!! % 10 == 0) {
            print("{ ${numbers[index]} } ")
        } else {
            print("${numbers[index]} ")
        }
    }
}