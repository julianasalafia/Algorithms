package e_while_flag

/*
    57) Develop an application that reads the salary and gender of several employees. At the end,
    show the total amount paid to men and the total paid to women. The program will ask the user whether
    he wants to continue or not whenever he reads the data of an employee.
*/

fun main() {
    var sumMenSalary = 0.0
    var sumWomenSalary = 0.0

    print("Do you want to register [y/n]? ")
    var answer = readln()

    while (answer == "y" || answer == "Y") {
        print("Salary: ")
        val salary = readln().toDouble()

        print("Sex [M/F]: ")
        val gender = readln()

        if (gender == "m" || gender == "M") {
            sumMenSalary += salary
        }

        if (gender == "f" || gender == "F") {
            sumWomenSalary += salary
        }

        print("Do you want to register [y/n]? ")
        answer = readln()

        if (answer == "n" || answer == "N") {
            val _sumMenSalary = String.format("%.2f", sumMenSalary)
            val _sumWomenSalary = String.format("%.2f", sumWomenSalary)

            println("The sum of men's salaries is $_sumMenSalary.")
            println("The sum of women's salaries is $_sumWomenSalary.")
            return
        }
    }
}
