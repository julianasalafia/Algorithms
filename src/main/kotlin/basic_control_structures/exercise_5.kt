package basic_control_structures

// Write a program that reads a student's two grades in a subject and displays their average on the screen.
fun averageGrade() {
    print("1st grade: ")
    val grade1 = readln().toDouble()

    print("2nd grade: ")
    val grade2 = readln().toDouble()

    val average = grade1.plus(grade2) / 2

    println("The average grade between $grade1 and $grade2 is $average.")
}