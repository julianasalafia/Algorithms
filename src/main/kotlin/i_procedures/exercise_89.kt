package i_procedures

/*
89) Create a program that improves the Generator() procedure from the previous question so that the programmer can choose one of three borders:
|        Borda 1       |       Borda 2       |        Borda 3       |
|+-------=======------+|-------:::::::-------|<<<<<<<<------->>>>>>>|

Ex: A valid call would be Generator("Portugol Studio", 3, 2)

--------------:::::::--------------
Portugol Studio
Portugol Studio
Portugol Studio
--------------:::::::--------------
*/

fun main() {
    generator("procedures", 3, 2)
}

fun generator(message: String, n: Int, border: Int) {
    border(border)
    for (c in 1..n) {
        println(message)
    }
    border(border)
}

fun border(border: Int) {
    when (border) {
        1 -> println("+-------=======------+")
        2 -> println("~~~~~~~:::::::~~~~~~~")
        3 -> println("<<<<<<<<------->>>>>>>")
        else -> println("----------------------")
    }
}