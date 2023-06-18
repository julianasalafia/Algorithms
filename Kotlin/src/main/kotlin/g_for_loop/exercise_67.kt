package g_for_loop

/*
    67) Make a program using the “for” structure that reads a positive integer number and shows a count on the
    screen from 0 to the entered value: Ex: Enter a value: 9. Count: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, END!
*/

fun main() {
    print("Write a number: ")
    val number = readln().toInt()

    print("Count: ")

    for (counter in 0..number) {
        print("$counter ")
    }
    print("It's over!")
}