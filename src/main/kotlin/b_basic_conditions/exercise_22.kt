package b_basic_conditions

/*
    Write a program that reads a guy's birth year and shows his situation in relation to military enlistment.
    If it is before 18 years old, show how many years are left until enlistment
    If already after 18 years old, show how many years have passed since enlistment
*/

fun main() {
    val currentYear = 2023

    print("Birth year: ")
    val birthYear = readln().toInt()
    val age = currentYear - birthYear

    if (age < 18) {
        val yearsEnlistment = 18 - age
        println("Underage. You will be drafted into the military in $yearsEnlistment years.")
    } else if (age > 18) {
        val yearsEnlistment = age - 18
        println("Legal age. You missed the military enlistment by $yearsEnlistment years.")
    } else {
        println("You are at the age of enlistment.")
    }
}