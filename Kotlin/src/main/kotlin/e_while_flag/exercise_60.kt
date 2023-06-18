package e_while_flag

/*
    60) Develop an algorithm that reads the name, age and gender of several people.
    The program will ask the user whether he wants to continue or not. At the end, show:
    a) the name of the oldest person b) the name of the youngest woman
    c) the average age of the group d) how many men are over 30 years old
    e) how many women are under 18 years old
*/

import java.util.Locale.getDefault

fun main() {
    var oldestAge = 0
    var nameOldestAge = "name"
    var nameYoungestWoman = "name"
    var youngestWomanAge: Int? = null
    val ages = mutableListOf<Int>()
    var counter = 0
    var womenUnder18 = 0
    var menOver30 = 0

    print("Do you want to register users [y/n]? ")
    val answer = readln().uppercase(getDefault())

    while (answer == "Y") {
        print("Name: ")
        val name = readln()

        print("Age: ")
        val age = readln().toInt()
        ages.add(age)

        print("Gender: ")
        val gender = readln().uppercase(getDefault())

        if (gender == "F") {
            if (youngestWomanAge == null || age < youngestWomanAge) {
                youngestWomanAge = age
                nameYoungestWoman = name
            }

            if (age <= 18) {
                womenUnder18++
            }
        }

        if (gender == "M" && age >= 30) {
            menOver30++
        }

        if (age > oldestAge) {
            oldestAge = age
            nameOldestAge = name
        }

        print("Do you want to continue [y/n]? ")
        val continueAnswer = readln().uppercase(getDefault())

        if (continueAnswer == "N") {
            println("Name of the oldest person: $nameOldestAge; age: $oldestAge.")
            println("Name of the youngest woman: $nameYoungestWoman; age: $youngestWomanAge.")
            println("Average age of the group: ${ages.average().toInt()}")
            println("Men over 30: $menOver30.")
            println("Women under 18: $womenUnder18.")
            return
        }
        counter++
    }
}
