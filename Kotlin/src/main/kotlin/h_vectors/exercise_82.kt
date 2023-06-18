package h_vectors

/*
82) Make an algorithm that reads the grade of 10 students in a class and stores them in an array. In the end, show:
a) What is the class average
b) How many students are above the class average
c) What was the highest grade entered
d) In which positions the highest grade appears
*/

fun main() {
    val grades = arrayOfNulls<Double>(10)
    val positionsWithHighestGrade = mutableListOf<Int>()
    var totalGrades = 0.0
    var studentsAboveAverage = 0
    var highestGrade = 0.0

    for (studentIndex in grades.indices) {
        print("Grade for student ${studentIndex + 1}: ")
        grades[studentIndex] = readLine()?.toDouble()

        totalGrades += grades[studentIndex]!!

        if (grades[studentIndex]!! > highestGrade) {
            highestGrade = grades[studentIndex]!!
        }
    }

    val classAverage = totalGrades / grades.size

    for (gradeIndex in grades.indices) {
        if (grades[gradeIndex]!! > classAverage) {
            studentsAboveAverage++
        }

        if (grades[gradeIndex]!! == highestGrade) {
            positionsWithHighestGrade.add(gradeIndex)
        }
    }

    println("The class average is $classAverage.")
    println("We have $studentsAboveAverage students above the average.")
    println("The highest grade entered was $highestGrade.")
    println("The highest grade appears at position ${positionsWithHighestGrade.joinToString()}.")
}
