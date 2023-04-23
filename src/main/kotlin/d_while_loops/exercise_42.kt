package d_while_loops
// 42) Make an algorithm that asks the user for any positive integer and displays a count up to that value:
// Ex: Enter a value: 35. Count: 1 2 3 4 5 6 7 … 33 34 35 Finished!

fun main() {
    var counter = 0

    print("Number:")
    val number = readln().toInt()

    while (counter <= number) {
        print("$counter.. ")
        counter++
    }
    print("Done!")
}