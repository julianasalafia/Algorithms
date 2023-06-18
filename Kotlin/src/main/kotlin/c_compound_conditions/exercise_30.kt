package c_compound_conditions

// [CHALLENGE] Redo algorithm 25, adding the feature of showing what type of triangle will be formed:
// EQUILATERAL: all sides equal. ISOSCELES: two sides equal. SCALENE: all sides different.

fun main() {
    print("a: ")
    val a = readln().toInt()

    print("b: ")
    val b = readln().toInt()

    print("c: ")
    val c = readln().toInt()

    if ((a < (b + c)) && (b < (a + c)) && (c < (a + b))) {
        if (a == b && b == c) {
            println("Triangle equilateral.")
        } else if (a == b || b == c || a == c) {
            println("Triangulo isosceles.")
        } else {
            println("Triangle scalene.")
        }
    } else {
        println("Not a triangle.")
    }
}