package d_while_loops

// 45) The above program will have a problem when we enter the first value greater than the last.
// Solve this problem with code that works in any situation.

fun main() {
    print("1st value: ")
    var value1 = readln().toInt()

    print("Last value: ")
    val value2 = readln().toInt()

    print("Incremented by: ")
    val increment = readln().toInt()

    if (value1 > value2) {
        while (value1 >= value2) {
            print("$value1.. ")
            value1 -= increment
        }
        println("Done!")
    } else {
        while (value2 >= value1) {
            print("$value1.. ")
            value1 += increment
        }
        println("Done!")
    }
}