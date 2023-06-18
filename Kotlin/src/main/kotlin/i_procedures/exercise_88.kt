package i_procedures

/*
88) Create a program that improves the Generator() procedure from the previous question to
display a message several times. Ex: When calling Generator("Learning Portugol", 4), it appears:
+------------------------+
Learning Portugol
Learning Portugol
Learning Portugol
Learning Portugol
+------------------------+
*/

fun main() {
    generator("learning procedures", 4)
}

fun generator(message: String, n: Int) {
    println("-------------------------------------")
    for (c in 1..n) {
        println(message)
    }
    println("-------------------------------------")
}