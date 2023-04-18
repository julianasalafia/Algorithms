package basic_control_structures

// Write a logic that reads the values of A, B, and C from a second-degree equation and shows the value of Delta.
fun returnDelta() {
    print("A: ")
    val a: Int = readln().toInt()

    print("B: ")
    val b: Int = readln().toInt()

    print("C: ")
    val c: Int = readln().toInt()

    val delta = (b * b) - 4 * a * c
    println("Delta: $delta")
}