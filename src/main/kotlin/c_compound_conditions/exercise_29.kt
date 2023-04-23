package c_compound_conditions

// Develop a program that reads the name of an employee, his/her salary, how many years he/she has been working
// at the company, and show his/her new salary, adjusted according to the following table:
// Up to 3 years at the company: 3% increase. Between 3 and 10 years: 12.5% increase. 10 years or more: 20% increase.

fun main() {
    print("Name: ")
    val name = readln()

    print("Salary: ")
    val salary = readln().toDouble()
    val _salary = String.format("%.2f", salary)

    print("Length of service: ")
    val lengthOfService = readln().toInt()

    if (lengthOfService in 0..3) {
        val percentage = 3
        val newSalary = salary + ((percentage * salary) / 100)

        val _newSalary = String.format("%.2f", newSalary)
        println("Name: $name. \nPercentage: $percentage%.\nSalary R$: $_salary. \nNew salary R$: $_newSalary.")
    }

    else if (lengthOfService in 4..9) {
        val percentage = 12.5
        val newSalary = salary + ((percentage * salary) / 100)

        val _newSalary = String.format("%.2f", newSalary)
        println("Name: $name. \nPercentage: $percentage%.\nSalary R$: $_salary. \nNew salary R$: $_newSalary.")
    }

    else if (lengthOfService >= 10) {
        val percentage = 20
        val newSalary = salary + ((percentage * salary) / 100)

        val _newSalary = String.format("%.2f", newSalary)
        println("Name: $name. \nPercentage: $percentage%.\nSalary R$: $_salary. \nNew salary R$: $_newSalary.")
    }

    else {
        println("Invalid.")
    }
}