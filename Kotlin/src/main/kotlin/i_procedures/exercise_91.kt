package i_procedures

/*
91) Develop an algorithm that reads two values from the keyboard and passes these values to a procedure
Bigger() that will verify which one is the biggest and display it on the screen. If both values are equal,
show a message informing this characteristic.
*/

fun main() {
    print("Enter the first value: ")
    val value1 = readln().toInt()

    print("Enter the second value: ")
    val value2 = readln().toInt()

    greater(value1, value2)
}

fun greater(a: Int, b: Int) {
    if (a > b) {
        println("$a is greater than $b.")
    } else if (b > a) {
        println("$a is less than $b.")
    } else {
        println("The values are equal.")
    }
}
