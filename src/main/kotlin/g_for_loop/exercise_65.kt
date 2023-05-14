package g_for_loop

/*
    65) Develop a program using the “for” structure that shows the following count on the screen:
    100 90 80 70 60 50 40 30 20 10 0 Done!
*/

fun main() {
    for (counter in 100 downTo 0 step 10) {
        print("$counter ")
    }
    println("It's over!")
}