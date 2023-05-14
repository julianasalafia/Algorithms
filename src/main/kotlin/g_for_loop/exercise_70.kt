package g_for_loop

/*
    70) [CHALLENGE] Make a program that shows the first 10 elements of the Fibonacci Sequence:
    1 1 2 3 5 8 13 21…
*/

fun main() {
    var n1 = 0
    var n2 = 1
    var n3 = 0

    for (counter in 1..10) {
        print("$n1 ")

        n3 = n1 + n2
        n1 = n2
        n2 = n3
    }
}
