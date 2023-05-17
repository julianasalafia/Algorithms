package i_procedures

/*
94)[CHALLENGE] Develop an application that has a procedure called Fibonacci()
that receives a single integer value as a parameter, indicating how many terms of the sequence will
be displayed on the screen. Your procedure should receive this value and display the requested number of elements.
Note: Use exercises 70 and 75 to help you in the solution.
Ex:
Fibonacci(5) will generate 1 >> 1 >> 2 >> 3 >> 5 >> END.
Fibonacci(9) will generate 1 >> 1 >> 2 >> 3 >> 5 >> 8 >> 13 >> 21 >> 34 >> END.
*/

fun main() {
    fibonacci(9)
}

fun fibonacci(terms: Int) {
    var a = 0
    var b = 1

    print("$b >> ")

    for (counter in 2..terms) {
        val c = a + b

        a = b
        b = c

        print("$c >> ")
    }
    print("END!")
}
