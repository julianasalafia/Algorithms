package a_basic_control_structures

// Develop an algorithm that reads two integers and displays the sum between them.
fun sumBetweenIntegers() {
    print("1st value: ")
    val value1 = readln().toInt()

    print("2nd value: ")
    val value2 = readln().toInt()

    val result = value1.plus(value2)

    println("The sum between $value1 and $value2 is $result.")
}