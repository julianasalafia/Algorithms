package basic_control_structures

// Write a program that reads the price of a product, calculates and shows its PROMOTIONAL PRICE, with a 5% discount.
fun promotionalPrice() {
    print("price: ")
    val price = readln().toDouble()
    val _price = String.format("%.2f", price)

    print("desconto(%): ")
    val discountPercentage = readln().toDouble()

    val discount = discountPercentage * price / 100
    val _discount = String.format("%.2f", discount)

    val discountedPrice = price - discount
    val _discountedPrice = String.format("%.2f", discountedPrice)

    println("Price: R$$_price, discount: R$$_discount, discounted price: R$$_discountedPrice.")
}