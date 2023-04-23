package d_while_loops

// 38) Write a program that displays the following count on the screen: 6 7 8 9 10 11 Finished!

fun main() {
    var counter = 6

    while (counter <= 11) {
        print("$counter.. ")
        counter++
    }
    println("Done!")
}