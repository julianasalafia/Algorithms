package g_for_loop

/*
    69) [CHALLENGE] Develop a program that reads the first term and the ratio of an AP (Arithmetic Progression),
    showing on the screen the first 10 elements of the AP and the sum of all the values in the sequence.
*/

fun main() {
    var sum = 0
    print("Enter the first term of the arithmetic progression (AP): ")
    val firstTerm = readLine()!!.toInt()

    print("Enter the common difference of the AP: ")
    val commonDifference = readLine()!!.toInt()

    for (counter in 1..10) {
        val term = firstTerm + (counter - 1) * commonDifference
        print("$term ")

        sum += term
    }
    println()
    println("The sum of the terms in the AP is: $sum.")
}
