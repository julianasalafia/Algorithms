package c_compound_conditions

// Write a program to approve or deny a bank loan to buy a house. The program will ask for the house value, the buyer's
// salary, and in how many years he/she will pay. Calculate the monthly payment value, knowing that it cannot exceed
// 30% of the salary, otherwise the loan will be denied.

import kotlin.math.pow
import kotlin.math.round

fun bankLoan() {
    print("Home price: ")
    val homePrice = readln().toDouble()

    print("Buyer's Salary: ")
    val buyerSalary = readln().toDouble()
    val _buyerSalary = String.format("%.2f", buyerSalary)

    print("Payment Years: ")
    val yearsPayment = readln().toDouble()

    val monthlyPayment = homePrice / (yearsPayment * 12)
    val _monthlyPayment = round(monthlyPayment * 10.0.pow(2)) / 10.0.pow(2)

    val percentage = 30
    val loanLimit = (buyerSalary * percentage) / 100
    val _loanLimit = String.format("%.2f", loanLimit)

    if (monthlyPayment <= loanLimit) {
        println("------------- APPROVED -------------")
        println("Limit: R$$_loanLimit")
        println("Salary: R$$_buyerSalary")
        println("Month Payment: R$$_monthlyPayment")
        println("----------------------------------------")
    }

    else {
        println("------------- REFUSED -------------")
        println("Limit: R$$_loanLimit")
        println("Salary: R$$_buyerSalary")
        println("Month Payment: R$$_monthlyPayment")
        println("----------------------------------------")
    }
}