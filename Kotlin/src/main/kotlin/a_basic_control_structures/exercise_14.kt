package a_basic_control_structures

/*
    The car rental company needs your help to charge for its services. Write a program that asks for the number of
    kilometers traveled by a rented car and the number of days it was rented for.
    Calculate the total price to be paid, knowing that the car costs R$90 per day and R$0.20 per kilometer driven.
 */

fun main() {
    print("km travelled: ")
    val kmTravelled = readln().toDouble()

    print("days rented: ")
    val daysRented = readln().toInt()

    val km = kmTravelled * 0.20
    val days = daysRented * 90

    val totalPrice = km + days
    val _totalPrice = String.format("%.2f", totalPrice)

    println("Km travelled: $kmTravelled; days rented: $daysRented; total price: $_totalPrice.")
}