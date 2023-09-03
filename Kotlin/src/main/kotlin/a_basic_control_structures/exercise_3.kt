package a_basic_control_structures

// Create a program that reads an employee's name and salary, and displays a message at the end.

fun main() {
    print("Employee name: ")
    val employeeName = readlnOrNull()

    print("Salary: ")
    val salary = readln().toDouble()
    val _salary = String.format("%.2f", salary)

    employeeName?.let {
        println("The employee $employeeName has a salary of U$$_salary.")
    } ?: print("No employee name provided.")
}