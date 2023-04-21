package c_compound_conditions

// Make a program that reads the width and length of a rectangular terrain, calculating and showing its area in m².
// The program should also show the classification of this land, according to the list below:
// Below 100m² = POPULAR LAND. Between 100m² and 500m² = MASTER LAND. Above 500m² = VIP LAND.

fun classifyingLands() {
    print("Width: ")
    val width = readln().toDouble()

    print("Legth: ")
    val length = readln().toDouble()

    val area = width * length
    val _area = String.format("%.1f", area)

    if (area in 0.0..99.0) {
        println("Area: $_area. \nPOPULAR LAND.")
    }

    else if (area in 100.0..500.0) {
        println("Area: $_area. \nMASTER LAND.")
    }

    else if (area > 500) {
        println("Area: $_area. \nVIP LAND.")
    }

    else {
        println("Invalid.")
    }
}