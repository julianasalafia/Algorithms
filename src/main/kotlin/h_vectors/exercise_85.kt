package h_vectors

/*
85) Make an algorithm that reads the name, gender, and salary of 5 employees and storesthis
data in three arrays. In the end, show a list containing only the data of female employees who earn more than R$5,000.
*/

fun main() {
    val names = arrayOfNulls<String>(5)
    val genders = arrayOfNulls<String>(5)
    val salaries = arrayOfNulls<Double>(5)
    val minimumSalary = 5000.0

    for (i in names.indices) {
        print("Enter the employee's name: ")
        names[i] = readLine()

        print("Enter the employee's gender [F/M]: ")
        genders[i] = readLine()?.uppercase()

        print("Enter the employee's salary: ")
        salaries[i] = readLine()?.toDouble()
    }

    println("Female employees with a salary above 5,000: ")

    for (i in names.indices) {
        if (genders[i] == "F" && salaries[i]!! > minimumSalary) {
            println("${names[i]}, ${genders[i]}, ${salaries[i]}")
        }
    }
}
