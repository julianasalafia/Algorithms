package d_while_loops

/*
    43) Develop an algorithm that displays a countdown from 30 to 1, marking the numbers that are divisible by 4, exactly as shown below:
    30 29 [28] 27 26 25 [24] 23 22 21 [20] 19 18 17 [16]…
*/

fun main() {
    var counter = 30

    while (counter >= 0) {
        if (counter % 4 == 0) {
            print("[$counter].. ")
        } else {
            print("$counter.. ")
        }
        counter--
    }
    print("Done!")
}