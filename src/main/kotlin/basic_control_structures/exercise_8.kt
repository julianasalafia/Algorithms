package basic_control_structures

// Create an algorithm that reads a distance in meters and shows the corresponding values in other measures.
fun meterToOtherMeasures() {
    print("Distance in meters: ")
    val distance = readln().toDouble()

    val km: Double = distance / 1000
    val hm: Double = distance / 100
    val dam: Double = distance / 10
    val dm: Double = distance * 10
    val cm: Double = distance * 100
    val mm: Double = distance * 1000

    println("The distance of $distance corresponds to: ")
    println("$km km")
    println("$hm hm")
    println("$dam dam")
    println("$dm dm")
    println("$cm cm")
    println("$mm mm")
}