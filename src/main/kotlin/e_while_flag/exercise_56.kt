package e_while_flag

/*
    56) Create a program that reads several numbers from the keyboard and shows the sum of them at the end.
    Note: The program will be interrupted when the number 1111 is entered.
*/

fun main() {
    var sum = 0

    print("Enter a number or 1111 to exit: ")
    var number = readln().toInt()

    while (number != 1111) {
        sum += number

        print("Enter a number or 1111 to exit: ")
        number = readln().toInt()
    }
    println("The sum of the entered numbers is $sum.")
}