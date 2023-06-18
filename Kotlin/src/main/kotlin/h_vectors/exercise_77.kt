package h_vectors

/*
77) Make a program that reads 7 names of people and stores them in an array.
In the end, show a list with all the names entered, in the reverse order of when they were entered.
*/

fun main() {
    val names = arrayOfNulls<String>(7)

    for (nome in names.indices) {
        print("Name ${nome + 1}: ")
        names[nome] = readln()
    }

    for (nome in 6 downTo 0) {
        print("${names[nome]} ")
    }
}