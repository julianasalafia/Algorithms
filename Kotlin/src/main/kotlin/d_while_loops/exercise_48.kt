package d_while_loops

// 48) Make a program that reads 7 integers and displays their sum at the end.

fun main() {
    var counter = 1
    var sum = 0

    while (counter <= 7) {
        print("Type a number: ")
        val number = readln().toInt()

        sum += number
        counter++
    }
    println("$sum")
}