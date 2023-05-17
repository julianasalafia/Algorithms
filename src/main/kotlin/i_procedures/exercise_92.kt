package i_procedures

/*
92) Create a logic that reads an integer number and passes it to a procedure EvenOrOdd()
that will verify and display on the screen if the value passed as a parameter is EVEN or ODD.
*/

fun main() {
    print("Enter the value: ")
    val value = readln().toInt()

    evenOrOdd(value)
}

fun evenOrOdd(value: Int) {
    if (value % 2 == 0) {
        println("$value is even.")
    } else {
        println("$value is odd.")
    }
}
