package i_procedures

/*
87) Create a program that improves the Generator() procedure from the previous questionto display
a personalized message, passed as a parameter. Ex: When calling Generator("*Learning Portugol*"), it appears:
+------------------------+
Learning Portugol
+------------------------+
*/

fun main() {
    generator("Learning about procedures, \n" +
            "the biggest difference between a procedure and a \n" +
            "function is that the procedure is a sequence of \n" +
            "instructions that doesn't return values while the function \n" +
            "is capable of returning.")
}

fun generator(message: String) {
    println("-------------------------------------")
    println(message)
    println("-------------------------------------")
}
