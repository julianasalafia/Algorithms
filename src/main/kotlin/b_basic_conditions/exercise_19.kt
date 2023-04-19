package basic_control_structures

// Create an algorithm that reads a student's name and two grades, calculates their average and displays it on the screen.
// Finally, analyze the average and show whether or not the student had good performance (if it was above the average of 7.0).
fun studentGrades() {
    print("Name: ")
    val studentName = readln()

    print("N1: ")
    val grade1 = readln().toDouble()

    print("N2: ")
    val grade2 = readln().toDouble()

    val gpa = (grade1 + grade2) / 2

    if (gpa >= 7.0) {
        println("The student $studentName did well. Average: $gpa")
    } else {
        println("The student $studentName did not do well. Average: $gpa")
    }
}