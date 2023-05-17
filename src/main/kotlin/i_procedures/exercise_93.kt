package i_procedures

/*
93) Make a program that has a procedure called Counter() that receives three values as parameters:
the start, the end, and the increment of a count. The main program should request the entry of these values
and pass them to the procedure, which will display the count on the screen.
Ex: For the start values (4), end (20), and increment (3), we will have Counter(4, 20, 3)will display on the screen
4 >> 7 >> 10 >> 13 >> 16 >> 19 >> END
*/

fun main() {
    counter(4, 20, 3)
}

fun counter(start: Int, end: Int, increment: Int) {
    for (counter in start..end step increment) {
        print("$counter >> ")
    }
    print("END")
}
