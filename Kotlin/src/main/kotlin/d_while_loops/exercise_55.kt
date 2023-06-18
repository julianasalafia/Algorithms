package d_while_loops

/*
    55) [CHALLENGE] Let’s improve the game we made in exercise 32. From now on,
    the computer will randomly choose a number between 1 and 10 and the player will have 4 attempts to try to guess it.
*/

import kotlin.random.Random

fun main() {
    var counter = 0

    while (counter < 4) {
        val drawn = Random.nextInt(1, 6)

        print("enter a number from 1 to 5: ")
        val number = readln().toInt()
        println("------------------------")

        if (number == drawn) {
            println("number: $number; drawn number: $drawn")
            println("you hit the drawn number.")
            println("------------------------")
            return
        }

        else if (number in 1..5) {
            println("number: $number; drawn number: $drawn")
            println("try again")
            println("------------------------")
        }

        else {
            println("invalid.")
        }
        counter++
    }
    println("your attempts are over!")
}