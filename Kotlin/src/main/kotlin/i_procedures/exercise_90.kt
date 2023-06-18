package i_procedures

/*
90) Develop an algorithm that reads two values from the keyboard and passes these values to
a procedure Adder() that will calculate and display the sum between them.
*/

fun main() {
    print("Enter the first value: ")
    val value1 = readln().toInt()

    print("Enter the second value: ")
    val value2 = readln().toInt()

    adder(value1, value2)
}

fun adder(a: Int, b: Int) {
    val result = a + b
    println("The sum of the values is $result.")
}
