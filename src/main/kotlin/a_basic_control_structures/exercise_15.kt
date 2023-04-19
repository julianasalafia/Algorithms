package a_basic_control_structures

// Create a program that reads the number of days worked in a month and shows the salary of an employee,
// knowing that he/she works 8 hours per day and earns R$25 per hour worked.
fun employeeSalaryCalculated() {
    val hourValue = 25.0
    val hoursWorked = 8

    print("Days worked in a month: ")
    val daysWorked: Int = readlnOrNull()?.toInt() ?: 0

    val salary = daysWorked * hoursWorked * hourValue
    val _salary = String.format("%.2f", salary)

    println("The employee salary is R$$_salary.")
}