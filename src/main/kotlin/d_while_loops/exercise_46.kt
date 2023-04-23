package d_while_loops

// 46) Create a program that calculates and displays the result of the sum between 6 + 8 + 10 + 12 + 14 + … + 98 + 100.

fun main() {
    var counter = 6
    var sum = 0

    while (counter <= 100) {
        sum += counter
        counter += 2
    }
    print("Sum: $sum")
}