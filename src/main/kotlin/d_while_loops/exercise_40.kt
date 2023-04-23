package d_while_loops

// 40) Create an application that displays the following count on the screen: 0 3 6 9 12 15 18 Finished!

fun main() {
    var counter = 0

    while (counter <= 18) {
        print("$counter.. ")
        counter+=3
    }
    print("Done!")
}