package j_functions

/*
100) Improve exercise 96 by creating, in addition to the Average() function, another function called Situation(),
which will return to the main program whether the student is APPROVED, in RECOVERY, or FAILED. This new function
will receive the result returned by the Media() function as a parameter.
*/

fun main() {
    print("Grade 1: ")
    val n1 = readln().toDouble()

    print("Grade 2: ")
    val n2 = readln().toDouble()

    val average = calculateAverage(n1, n2)
    println("The average is $average.")

    val status = getStatus(average)
    println("Status: $status")
}

fun calculateAverage(a: Double, b: Double): Double {
    return (a + b) / 2
}

fun getStatus(average: Double): String {
    return if (average in 7.5..10.0) {
        "Approved!"
    } else if (average in 5.0..7.5) {
        "On probation."
    } else if (average >= 0.0 && average < 5) {
        "Failed."
    } else {
        "Invalid"
    }
}
