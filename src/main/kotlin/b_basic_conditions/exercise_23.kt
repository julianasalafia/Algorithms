package basic_control_structures

// In an exclusive promotion for Women's Day, a store wants to give discounts to everyone, but especially to women.
// Create a program that reads the customer's name, gender, and purchase value and calculates the discounted price. Knowing that:
// Men receive a 5% discount
// Women receive a 13% discount
fun womensDay() {
    print("name: ")
    val name = readln()

    print("purchase price: ")
    val price = readln().toDouble()

    println("gender: ")
    println("1) male")
    println("2) female")
    println("3) other")

    val option = readln().toInt()

    val percentageMale = 5
    val percentageFemale = 13

    val discountMale = percentageMale * price / 100
    val discountFemale = percentageFemale * price / 100

    val _discountMale = String.format("%.2f", discountMale)
    val _discountFemale = String.format("%.2f", discountFemale)

    when (option) {
        1 -> println("discount for $name: R$$_discountMale.")
        2 -> println("discount for $name: R$$_discountFemale.")
        3 -> println("User without discount, sign up.")
        else -> println("Invalid option.")
    }
}