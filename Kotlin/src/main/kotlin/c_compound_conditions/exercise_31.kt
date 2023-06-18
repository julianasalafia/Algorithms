package c_compound_conditions

import kotlin.random.Random

// [CHALLENGE] Create a Rock-Paper-Scissors game

fun main() {
    println("Choose an option:")
    println("1) rock")
    println("2) paper")
    println("3) scissors")

    val playerOption = readln().toInt()
    val computerOption = Random.nextInt(1, 4)

    if (playerOption == 1 && computerOption == 3) {
        val playerChoice = "rock"
        val computerChoice = "scissors"

        println("Player: $playerChoice\nComputer: $computerChoice")
        println("Player wins.")
    }

    else if (playerOption == 1 && computerOption == 2) {
        val playerChoice = "rock"
        val computerChoice = "paper"

        println("Player: $playerChoice\nComputer: $computerChoice")
        println("Player looses.")
    }

    else if (playerOption == 2 && computerOption == 1) {
        val playerChoice = "paper"
        val computerChoice = "rock"

        println("Player: $playerChoice\nComputer: $computerChoice")
        println("Player wins.")
    }

    else if (playerOption == 2 && computerOption == 3) {
        val playerChoice = "paper"
        val computerChoice = "scissors"

        println("Player: $playerChoice\nComputer: $computerChoice")
        println("Player looses.")
    }

    else if (playerOption == 3 && computerOption == 2) {
        val playerChoice = "scissors"
        val computerChoice = "paper"

        println("Player: $playerChoice\nComputer: $computerChoice")
        println("Player wins.")
    }

    else if (playerOption == 3 && computerOption == 1) {
        val playerChoice = "scissors"
        val computerChoice = "rock"

        println("Player: $playerChoice\nComputer: $computerChoice")
        println("Player looses.")
    }

    else if (playerOption == computerOption) {
        println("Tie.")
    }

    else {
        println("Invalid.")
    }
}