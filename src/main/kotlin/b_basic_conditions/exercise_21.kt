package basic_control_structures

// Write a program that reads a guy's birth year and shows his situation in relation to military enlistment.
//If it is before 18 years old, show how many years are left until enlistment
//If already after 18 years old, show how many years have passed since enlistment
fun leapYear() {
    print("Year: ")
    val year = readln().toInt()

    if(year % 4 == 0 || year % 400 == 0 && year % 100 != 0) {
        println("Leap year!")
    } else {
        println("Non-leap year!")
    }
}