package h_vectors

/*
81) Create a program that reads the age of 8 people and stores them in an array. At the end, show:
a) What is the average age of the registered people
b) In which positions we have people over 25 years old
c) What was the highest age entered (there may be repetitions)
d) In which positions we entered the highest age
*/

fun main() {
    val ages = arrayOfNulls<Int>(8)
    val positionsOver25 = mutableListOf<Int>()
    val positionsWithMaxAge = mutableListOf<Int>()
    var totalAges = 0
    var maxAge = 0
    var repeatedMaxAge = 0
    var repeatedOver25 = 0

    for (index in ages.indices) {
        print("Enter the age of person ${index + 1}: ")
        ages[index] = readLine()?.toInt()

        totalAges += ages[index]!!

        if (ages[index]!! > maxAge) {
            maxAge = ages[index]!!
        }
    }

    for (index in ages.indices) {
        if (ages[index]!! >= 25) {
            positionsOver25.add(index)
            repeatedOver25++
        }

        if (ages[index]!! == maxAge) {
            positionsWithMaxAge.add(index)
            repeatedMaxAge++
        }
    }

    val averageAge = totalAges / ages.size

    println("--------------- EVALUATION ---------------")
    println("Average age of registered people: $averageAge.")
    if (repeatedOver25 > 1) {
        println("We have people aged 25 or older at positions: ${positionsOver25.joinToString()}.")
    } else {
        println("We have one person aged 25 or older at position: ${positionsOver25.joinToString()}.")
    }

    if (repeatedMaxAge > 1) {
        println("The maximum age entered was $maxAge and it was entered at positions: ${positionsWithMaxAge.joinToString()}.")
    } else {
        println("The maximum age entered was $maxAge and it was entered at position: ${positionsWithMaxAge.joinToString()}.")
    }
}

