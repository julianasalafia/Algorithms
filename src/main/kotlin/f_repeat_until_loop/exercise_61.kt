package f_repeat_until_loop

/*
    61) Create a program that shows the following count on the screen using the “repeat until” structure:
    0 3 6 9 12 15 18 21 24 27 30 Done!
*/
fun main() {
    var counter = 0

    do {
        print("$counter ")
        counter += 3
    } while (counter <= 30)

    println("It's over!")
}
