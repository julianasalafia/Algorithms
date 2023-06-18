package d_while_loops

// 49) Create a program that reads 6 integers and displays how many of them are even and how many are odd at the end.

fun main() {
    var counter = 1
    var even = 0
    var odd = 0

    while (counter <= 6) {
        print("Type a number: ")
        val number = readln().toInt()

        if (number % 2 == 0) {
            even++
        } else {
            odd++
        }
        counter++
    }
    println("Even numbers: $even. Odd numbers: $odd.")
}