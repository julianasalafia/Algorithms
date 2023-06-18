package g_for_loop

/*
    64) Develop a program using the “for” structure that shows the following count on the screen:
    0 5 10 15 20 25 30 35 40 Done!
*/

fun main() {
    for (counter in 0..40 step 5) {
        print("$counter ")
    }
    println("It's over!")
}
