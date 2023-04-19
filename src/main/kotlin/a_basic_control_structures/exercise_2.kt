package a_basic_control_structures

// Write a program that reads a person's name and displays a welcome message for them.
fun welcomeMessage() {
    print("What's your name? ")
    val name = readlnOrNull()

    println("Hello $name, it's nice to meet you.")
}