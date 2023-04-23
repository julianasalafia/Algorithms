package a_basic_control_structures

// Write an algorithm that reads the width and height of a wall, calculates and displays the area to be painted and the amount of paint needed for the job, considering that each liter of paint paints an area of 2 square meters.

fun main() {
    print("Wall width: ")
    val width: Double = readln().toDouble()

    print("Wall height: ")
    val height: Double = readln().toDouble()

    val measure = width * height
    val _measure = String.format("%.0f", measure)

    val volume: Double = measure * 2
    val _volume = String.format("%.0f", volume)

    println("You have $_measure square meters to paint. \nIt will be necessary $_volume liters of paint.")
}