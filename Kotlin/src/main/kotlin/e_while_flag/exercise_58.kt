package e_while_flag

/*
    58) Make an algorithm that reads the age of several students in a class.
    The program will stop when the age 999 is entered. At the end, show how many students are in the
    class and what is the average age of the group.
*/

fun main() {
    var count = 0
    val ages = mutableListOf<Int>()

    print("Do you want to register students [y/n]? ")
    var answer = readln()

    while (answer == "y" || answer == "Y") {
        print("Age: ")
        val age = readln().toInt()

        if (age == 999) {
            println("Number of students: $count.")
            println("Average age: ${ages.average().toInt()}.")
            return
        }
        ages.add(age)
        count++
        print("Do you want to register students [y/n]? ")
        answer = readln()
    }
}
