## 09 - PROCEDURES

**86)** Create a program that has a procedure Generator() that, when called, displays the message "*Hello, World!*" with some visual component (lines) Ex: When calling Generator(), it appears:

    +------------------------+
     Hello, World! 
    +------------------------+

**87)** Create a program that improves the Generator() procedure from the previous question to display a personalized message, passed as a parameter. Ex: When calling Generator("*Learning Portugol*"), it appears:

    +------------------------+
     Learning Portugol 
    +------------------------+

**88)** Create a program that improves the Generator() procedure from the previous question to display a message several times. Ex: When calling Generator("*Learning Portugol*", 4), it appears:

    +------------------------+
     Learning Portugol
     Learning Portugol
     Learning Portugol
     Learning Portugol
    +------------------------+

**89)** Create a program that improves the Generator() procedure from the previous question so that the programmer can choose one of three borders:

|Borda 1|Borda 2|Borda 3|
|--|--|--|
|+-------=======------+|-------:::::::-------|<<<<<<<<------->>>>>>>|

Ex: A valid call would be Generator("*Portugol Studio*", 3, 2)

    --------------:::::::--------------
     Portugol Studio
     Portugol Studio
     Portugol Studio
    --------------:::::::--------------

**90)** Develop an algorithm that reads two values from the keyboard and passes these values to a procedure Adder() that will calculate and display the sum between them.

**91)** Develop an algorithm that reads two values from the keyboard and passes these values to a procedure Bigger() that will verify which one is the biggest and display it on the screen. If both values are equal, show a message informing this characteristic.

**92)** Create a logic that reads an integer number and passes it to a procedure EvenOrOdd() that will verify and display on the screen if the value passed as a parameter is EVEN or ODD.

**93)** Make a program that has a procedure called Counter() that receives three values as parameters: the start, the end, and the increment of a count. The main program should request the entry of these values and pass them to the procedure, which will display the count on the screen. *Ex: For the start values (4), end (20), and increment (3), we will have Counter(4, 20, 3) will display on the screen 4 >> 7 >> 10 >> 13 >> 16 >> 19 >> END*

**94)** ***[CHALLENGE]*** Develop an application that has a procedure called Fibonacci() that receives a single integer value as a parameter, indicating how many terms of the sequence will be displayed on the screen. Your procedure should receive this value and display the requested number of elements. *Note: Use exercises 70 and 75 to help you in the solution.*
*Ex: Fibonacci(5) will generate 1 >> 1 >> 2 >> 3 >> 5 >> END. Fibonacci(9) will generate 1 >> 1 >> 2 >> 3 >> 5 >> 8 >> 13 >> 21 >> 34 >> END.*