package e_while_flag

/*
    59) Create a program that reads the gender and age of several people.
    The program will ask the user whether he wants to continue or not for each person. At the end, show:
    a) what is the highest age read b) how many men were registered
    c) what is the age of the youngest woman d) what is the average age among men
*/

fun main() {
    var maleCount = 0
    var totalMaleAge = 0
    var maleAgeSum = 0
    var femaleCount = 0
    var youngestFemaleAge: Int? = null
    var oldestAge = 0

    print("Do you want to register a user[y/n]? ")
    val answer = readln()

    while (answer == "y" || answer == "Y") {
        print("Sex: ")
        val gender = readln()

        print("Age: ")
        val age = readln().toInt()

        if (gender == "m" || gender == "M") {
            maleCount++
            totalMaleAge += age
        } else if (gender == "f" || gender == "F") {
            if (youngestFemaleAge == null || age < youngestFemaleAge) {
                youngestFemaleAge = age
            }
            femaleCount++
        }

        if (age > oldestAge) {
            oldestAge = age
        }

        print("Do you want to continue[y/n]? ")
        val continueAnswer = readln()

        if (continueAnswer == "n" || continueAnswer == "N") {
            if (maleCount > 0) {
                maleAgeSum = totalMaleAge / maleCount
            }

            println("Oldest age: $oldestAge.")
            println("Number of men registered: $maleCount.")
            println("Age of youngest woman: $youngestFemaleAge.")
            println("Average age among men: $maleAgeSum.")
            return
        }
    }
}
