package d_while_loops

// 41) Develop a program that displays the following count on the screen: 100 95 90 85 80 … 0 Finished!

fun main() {
    var counter = 100

    while (counter >= 0) {
        print("$counter.. ")
        counter-=5
    }
    print("Done!")
}