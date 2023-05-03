package d_while_loops

// 51) Make an application that reads the price of 8 products. At the end, display on the screen what was the highest and lowest price entered.

fun main() {
    var counter = 1
    val prices = mutableListOf<Double>()

    while (counter <= 8) {
        print("Product price $counter: ")
        val price = readln().toDouble()
        prices.add(price)
        counter++
    }

    val lowerPrice = prices.minOrNull()
    val biggestPrice = prices.maxOrNull()

    println("The biggest price is $biggestPrice. \nThe lowest price is $lowerPrice.")
}