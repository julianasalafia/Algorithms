package d_while_loops

/*
    44) Create an algorithm that reads the initial value of the count, the final value, and the increment, then shows all values in the range:
    Ex: Enter the first value: 3. Enter the last value: 10. Enter the increment: 2. Count: 3 5 7 9 Finished!
*/

fun main() {
    print("1st value: ")
    var value1 = readln().toInt()

    print("Last value: ")
    val value2 = readln().toInt()

    print("Incremented by: ")
    val increment = readln().toInt()

    while (value2 >= value1) {
        print("$value1.. ")
        value1+=increment
    }
    println("Done!")
}