package b_basic_conditions

// Create an algorithm that asks for the distance a passenger wishes to travel in Km.
// Calculate the ticket price, charging R$0.50 per Km for trips up to 200Km and R$0.45 for longer trips.
fun distanceTicket() {
    print("Planned distance: ")
    val plannedDistance = readln().toDouble()

    if (plannedDistance > 0 && plannedDistance <= 200) {
        val price = plannedDistance * 0.50
        val _price = String.format("%.2f", price)

        println("Distance: $plannedDistance. Price: $_price.")
    } else {
        val price = plannedDistance * 0.45
        val _price = String.format("%.2f", price)

        println("Distance: $plannedDistance. Price: $_price")
    }
}