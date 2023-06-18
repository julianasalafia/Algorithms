package c_compound_conditions

/*
    A car rental company needs to charge for its services. Renting a popular car costs R$90 per day, and renting a luxury
    car costs R$150 per day. In addition, the customer pays for the distance traveled in kilometers. Write a program that
    reads the type of rented car (popular or luxury), the number of rental days, and the distance traveled in kilometers.
    At the end, show the price to be paid according to the following table:
    Popular cars (R$90 per day). Up to 100Km traveled: R$0.20 per Km. Above 100Km traveled: R$0.10 per Km.
    Luxury cars (R$150 per day). Up to 200Km traveled: R$0.30 per Km. Above 200Km traveled: R$0.25 per Km.
*/

fun main() {
    println("Which car do you want?")
    println("1) Popular car")
    println("2) Luxury car")

    val optionCar = readln().toInt()
    val price: Double

    print("Rental days: ")
    val days = readln().toInt()

    print("Distance Traveled: ")
    val km = readln().toInt()

    when (optionCar) {
        1 -> {
            price = if (km <= 100) {
                km * 0.20
            } else {
                km * 0.10
            }
            val _price = String.format("%.2f", price)

            println("Popular car.")
            println("KM: $km \nDays: $days \nPrice R$: $_price")
        }

        2 -> {
            price = if (km <= 100) {
                km * 0.30
            } else {
                km * 0.25
            }
            val _price = String.format("%.2f", price)

            println("Luxury car.")
            println("KM: $km \nDays: $days \nPrice R$: $_price")
        }

        else -> {
            println("Invalid option.")
        }
    }
}