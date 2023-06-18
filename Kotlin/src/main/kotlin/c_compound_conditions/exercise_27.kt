package c_compound_conditions

// Create a program that reads two grades of a student and calculates his/her average, showing a message at the end, according to the reached average:
// Average up to 4.9: FAILED. Average between 5.0 and 6.9: RECOVERY. Average 7.0 or higher: APPROVED.

fun main() {
    print("1st grade: ")
    val grade1 = readln().toDouble()

    print("2nd grade: ")
    val grade2 = readln().toDouble()

    val gpa = (grade1 + grade2) / 2
    val _gpa = String.format("%.1f", gpa)

    if (gpa >= 7 && gpa <= 10) {
        println("GPA: $_gpa. \nPASSED.")
    }

    else if (gpa >= 5 && gpa < 7) {
        println("GPA: $_gpa. \nREMEDIAL CLASSES.")
    }

    else if (gpa >= 0 && gpa < 5) {
        println("GPA: $_gpa. \nFAILED.")
    }

    else {
        println("Invalid.")
    }
}