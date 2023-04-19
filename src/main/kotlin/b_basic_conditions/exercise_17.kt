package b_basic_conditions

// Write a program that asks for a car's speed. If it exceeds 80Km/h, display a message saying that the user has been fined.
// In this case, display the fine amount, charging R$5 for each Km above the speed limit.
fun speedLimit() {
    print("Speed limit (km/h): ")
    val speedLimit = readln().toInt()

    print("Car speed (km/h): ")
    val carSpeed = readln().toInt()

    if (carSpeed > speedLimit) {
        val fineAmount = (carSpeed - speedLimit) * 5
        println("You've been fined in US$${fineAmount}.")
    }
}