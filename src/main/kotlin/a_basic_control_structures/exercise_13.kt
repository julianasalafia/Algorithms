package a_basic_control_structures

// Create an algorithm that reads an employee's salary, calculates and shows their new salary with a 15% increase.
fun increasedSalary() {
    print("Current salary: ")
    val salary = readln().toDouble()
    val _salary = String.format("%.2f", salary)

    print("Increase(%): ")
    val increasePercentage = readln().toDouble()

    val increase = increasePercentage * salary / 100
    val _increase = String.format("%.0f", increase)

    val updatedSalary = salary + increase
    val _updateSalary = String.format("%.2f", updatedSalary)

    println("Initial salary: R$$_salary; increased value: R$$_increase; updated salary: R$$_updateSalary.")
}