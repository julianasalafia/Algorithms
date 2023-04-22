package c_compound_conditions

// A company needs to adjust the salaries of its employees, giving them a raise based on some factors. Write a program
// that reads the employee's current salary, gender, and how many years they have been working for the company.
// At the end, show their new salary, based on the following table:
// Women: Less than 15 years in the company: +5%. From 15 to 20 years in the company: +12%. More than 20 years in the company: +23%.
// Men: Less than 20 years in the company: +3%. From 20 to 30 years in the company: +13%. More than 30 years in the company: +25%.

fun adjustingSalary() {
    print("Current salary: ")
    val currentSalary = readln().toDouble()

    print("Years working for company: ")
    val yearsWorking = readln().toDouble()

    println("Gender:")
    println("1) Female")
    println("2) Male")

    val gender = readln().toInt()
    val _gender: String

    var newSalary = currentSalary

    when (gender) {
        1 -> {
            _gender = "Female"

            if (yearsWorking < 15) {
                newSalary = currentSalary + ((currentSalary * 5) / 100)
            } else if (yearsWorking in 15.0..20.0) {
                newSalary = currentSalary + ((currentSalary * 12) / 100)
            } else if (yearsWorking >= 20) {
                newSalary = currentSalary + ((currentSalary * 23) / 100)
            } else {
                println("Invalid.")
            }

            val _newSalary = String.format("%.2f", newSalary)
            return println("Current salary: R$$currentSalary \nGender: $_gender \nNew salary: R$$_newSalary")
        }

        2 -> {
            _gender = "Male."

            if (yearsWorking < 20) {
                newSalary = currentSalary + ((currentSalary * 3) / 100)
            } else if (yearsWorking in 20.0..30.0) {
                newSalary = currentSalary + ((currentSalary * 13) / 100)
            } else if (yearsWorking > 30) {
                newSalary = currentSalary + ((currentSalary * 25) / 100)
            } else {
                println("Invalid.")
            }

            val _newSalary = String.format("%.2f", newSalary)
            return println("Current salary: R$$currentSalary \nGender: $_gender \nNew salary: R$$_newSalary")
        }

        else -> {
            println("Invalid.")
        }
    }
}