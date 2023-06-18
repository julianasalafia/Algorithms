package g_for_loop

/*
    66) Write a program that reads any number and shows the multiplication table of that number,
    using the “for” structure. Ex: Enter a value: 5. 5 x 1 = 5. 5 x 2 = 10. 5 x 3 = 15 (…)
*/

fun main() {
    print("Write a number: ")
    val number = readln().toInt()

    for (counter in 1..10) {
        val result = number * counter
        println("$number x $counter = $result")
    }
}