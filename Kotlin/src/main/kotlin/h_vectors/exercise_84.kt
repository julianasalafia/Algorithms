package h_vectors

/*
84) Create a program that reads the name and age of 9 people and stores these values
in two arrays, in related positions. In the end, show a list containing only the data of underage people.
*/

fun main() {
    val names = arrayOfNulls<String>(9)
    val ages = arrayOfNulls<Int>(9)

    for (i in names.indices) {
        print("Enter the person's name: ")
        names[i] = readLine()

        print("Enter the person's age: ")
        ages[i] = readLine()?.toInt()
    }

    println("People under the age of 18: ")

    for (i in ages.indices) {
        if (ages[i]!! < 18) {
            println("${names[i]}, ${ages[i]} years old.")
        }
    }
}
