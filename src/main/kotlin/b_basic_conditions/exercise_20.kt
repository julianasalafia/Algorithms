package b_basic_conditions

// Develop a program that reads an integer and shows whether it is EVEN or ODD.
fun evenOrOdd() {
    print("Number: ")
    val number = readln().toInt()

    if (number % 2 == 0) {
        println("It's even!")
    } else {
        println("It's odd!")
    }
}