package basic_control_structures

// Write an algorithm that reads how much money a person has in their wallet (in R$) and shows how many dollars they can buy. Consider US$1.00 = R$3.45.
fun moneyConversionRealToDollar() {
    print("Amount: R$")
    val amount: Double = readln().toDouble()
    val _amount = String.format("%.2f", amount)

    print("Exchange rate: R$")
    val price: Double = readln().toDouble()
    val _price = String.format("%.2f", price)

    val dollar = amount / price
    val _dollar = String.format("%.2f", dollar)

    println("You have R$$_amount, the exchange rate is R$$_price and you can buy US$$_dollar.")
}