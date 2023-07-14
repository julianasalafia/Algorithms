package b_basic_conditions

/*
    Make an algorithm that reads a specific year and shows whether or not it is LEAP year.
*/

fun main() {
    print("Year: ")
    val year = readln().toInt()

    if(year % 4 == 0 || year % 400 == 0 && year % 100 != 0) {
        println("Leap year!")
    } else {
        println("Non-leap year!")
    }
}
