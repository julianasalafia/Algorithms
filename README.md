
# Algorithms

In this repository, you will find the 100 exercises given in Gustavo Guanabara's Programming Logic Course executed in Kotlin. You can find the original file in [here](https://www.cursoemvideo.com/wp-content/uploads/2019/08/exercicios-algoritmos.pdf). Translated with ChatGPT.

## 01 - BASIC SEQUENCES

**1)** Write a program that displays the message "*Hello, World!*" on the screen.

**2)** Create a program that reads a person's name and displays a welcome message to them.
*Ex: What's your name? John Doe. Hello John Doe, nice to meet you!*

**3)** Create a program that reads a employee's name and salary, displaying a message in the end.
*Ex: Employee Name: Mary Smith. Salary: US$1850.45. Employee Mary Smith has a salary of US$1850.45 in June.*

**4)** Develop an algorithm that reads two integers and displays their sum.
*Ex: Enter a value: 8. Enter another value: 5. The sum between 8 and 5 is equal to 13.* 

**5)** Create a program that reads a student's two grades in a subject and displays their average.
*Ex: Grade 1: 4.5. Grade 2: 8.5. The average between 4.5 and 8.5 is equal to 6.5.*

**6)** Create a program that reads an integer and displays its predecessor and successor.
*Ex: Enter a number: 9. The predecessor of 9 is 8. The successor of 9 is 10.*

**7)** Develop an algorithm that reads a real number and displays its double and third.
*Ex: Enter a number: 3.5. The double of 3.5 is 7.0. The third part of 3.5 is 1.16666.*

**8)** Create a program that reads a distance in meters and shows the relative values in other measurements.
*Ex: Enter a distance in meters: 185.72. The distance of 85.7m corresponds to: 0.18572km. 1.8572hm. 18.572dam. 1857.2dm. 18572.0cm. 185720.0mm.*

**9)** Create an algorithm that reads how much money a person has in their wallet (in R$) and shows how many dollars they can buy. Consider US$1.00 = R$3.45.

**10)** Create an algorithm that reads the width and height of a wall, calculates and shows the area to be painted and the amount of paint needed for the job, knowing that each liter of paint paints an area of ​​2 square meters.

**11)** Develop a logic that reads the values ​​of A, B, and C from a second-degree equation and shows the value of Delta.

**12)** Create a program that reads the price of a product, calculates, and shows its PROMOTIONAL PRICE, with a 5% discount.

**13)** Create an algorithm that reads an employee's salary, calculates, and shows their new salary, with a 15% increase.

**14)** The car rental company needs your help to charge for their services. Write a program that asks for the number of kilometers traveled by a rented car and the number of days it was rented for. Calculate the total price to be paid, knowing that the car costs $90 per day and $0.20 per kilometer traveled.

**15)** Create a program that reads the number of days worked in a month and shows an employee's salary, knowing that they work 8 hours a day and earn $25 per hour worked.

**16)** ***[CHALLENGE]*** Write a program to calculate a smoker's reduced lifespan. Ask for the number of cigarettes smoked per day and how many years they have smoked. Consider that a smoker loses 10 minutes of life for each cigarette. Calculate how many days of life a smoker will lose and display the total in days.


## 02 - BASIC CONDITIONS

**17)** Write a program that asks for a car's speed. If it exceeds 80Km/h, display a 
message saying that the user has been fined. In this case, display the fine amount, 
charging R$5 for each Km above the speed limit.

**18)** Create a program that reads a person's birth year, calculates their age, and 
then shows whether or not they can vote.

**19)** Create an algorithm that reads a student's name and two grades, calculates their 
average and displays it on the screen. Finally, analyze the average and show whether 
or not the student had good performance (if it was above the average of 7.0).

**20)** Develop a program that reads an integer and shows whether it is EVEN or ODD.

**21)** Make an algorithm that reads a specific year and shows whether or not it is 
LEAP year.

**22)** Write a program that reads a guy's birth year and shows his situation in relation 
to military enlistment.
- If it is before 18 years old, show how many years are left until enlistment
- If already after 18 years old, show how many years have passed since enlistment

**23)** In an exclusive promotion for Women's Day, a store wants to give discounts to 
everyone, but especially to women. Create a program that reads the customer's name, 
gender, and purchase value and calculates the discounted price. Knowing that:
- Men receive a 5% discount
- Women receive a 13% discount

**24)** Create an algorithm that asks for the distance a passenger wishes to travel in Km. 
Calculate the ticket price, charging R$0.50 per Km for trips up to 200Km and R$0.45 for 
longer trips.

**25)** ***[CHALLENGE]*** Create a program that reads the size of three line segments. Analyze 
their lengths and say if it is possible to form a triangle with these lines. 
Mathematically, for three segments to form a triangle, the length of each side must be 
less than the sum of the other two.


## 03 - COMPOUND CONDITIONS

**26)** Write an algorithm that reads two integers and compares them, showing on the screen one of the messages below:
  - The first value is greater
  - The second value is greater
  - There is no greater value, they are equal
  
**27)** Create a program that reads two grades of a student and calculates his/her average, showing a message at the end, according to the reached average:
  - Average up to 4.9: FAILED
  - Average between 5.0 and 6.9: RECOVERY
  - Average 7.0 or higher: APPROVED
  
**28)** Make a program that reads the width and length of a rectangular terrain, calculating and showing its area in m². The program should also show the classification of this land, according to the list below:
  - Below 100m² = POPULAR LAND
  - Between 100m² and 500m² = MASTER LAND
  - Above 500m² = VIP LAND
  
**29)** Develop a program that reads the name of an employee, his/her salary, how many years he/she has been working at the company, and show his/her new salary, adjusted according to the following table:
  - Up to 3 years at the company: 3% increase
  - Between 3 and 10 years: 12.5% increase
  - 10 years or more: 20% increase
  
**30)** ***[CHALLENGE]*** Redo algorithm 25, adding the feature of showing what type of triangle will be formed:
  - EQUILATERAL: all sides equal
  - ISOSCELES: two sides equal
  - SCALENE: all sides different
  
**31)** ***[CHALLENGE]*** Create a Rock-Paper-Scissors game

**32)** ***[CHALLENGE]*** Create a game where the computer will draw a number between 1 and 5, and the player will try to guess the drawn value.

**33)** Write a program to approve or deny a bank loan to buy a house. The program will ask for the house value, the buyer's salary, and in how many years he/she will pay. Calculate the monthly payment value, knowing that it cannot exceed 30% of the salary, otherwise the loan will be denied.

**34)** The Body Mass Index (BMI) is a value calculated based on a person's height and weight. According to the BMI value, we can classify the individual within certain ranges.
  - below 18.5: Underweight
  - between 18.5 and 25: Ideal weight
  - between 25 and 30: Overweight
  - between 30 and 40: Obesity
  - above 40: Morbid obesity
*Note: The BMI is calculated by the expression weight/height² (weight divided by the square of the height)*


**35)** A car rental company needs to charge for its services. Renting a popular car costs R$90 per day, and renting a luxury car costs R$150 per day. In addition, the customer pays for the distance traveled in kilometers. Write a program that reads the type of rented car (popular or luxury), the number of rental days, and the distance traveled in kilometers. At the end, show the price to be paid according to the following table:
- Popular cars (R$90 per day)
 - Up to 100Km traveled: R$0.20 per Km
 - Above 100Km traveled: R$0.10 per Km
- Luxury cars (R$150 per day)
 - Up to 200Km traveled: R$0.30 per Km
 - Above 200Km traveled: R$0.25 per Km

**36)** A healthy lifestyle program wants to reward physical activity with points that can be exchanged for money. The system works as follows:
 - Each hour of physical activity in the month is worth points
 - Up to 10 hours of activity in the month: earns 2 points per hour
 - From 10 to 20 hours of activity in the month: earns 5 points per hour
 - Above 20 hours of activity in the month: earns 10 points per hour
 - For every point earned, the customer earns R$0.05 (5 cents)
Write a program that reads how many hours of physical activity a person had in a month, calculates and shows how many points they earned and how much money they were able to earn.

**37)** A company needs to adjust the salaries of its employees, giving them a raise based on some factors. Write a program that reads the employee's current salary, gender, and how many years they have been working for the company. At the end, show their new salary, based on the following table:

| Women | Men	 |
|--|--|
| Less than 15 years in the company: +5% | Less than 20 years in the company: +3%  |
| From 15 to 20 years in the company: +12% | From 20 to 30 years in the company: +13%  |
| More than 20 years in the company: +23% | More than 30 years in the company: +25%  |

## 04 - WHILE LOOPS

**38)** Write a program that displays the following count on the screen:
*6 7 8 9 10 11 Finished!*

**39)** Make an algorithm that displays the following count on the screen:
*10 9 8 7 6 5 4 3 Finished!*

**40)** Create an application that displays the following count on the screen:
*0 3 6 9 12 15 18 Finished!*

**41)** Develop a program that displays the following count on the screen:
*100 95 90 85 80 ... 0 Finished!*

**42)** Make an algorithm that asks the user for any positive integer and displays a count up to that value:
Ex: Enter a value: 35
*Count: 1 2 3 4 5 6 7 ... 33 34 35 Finished!*

**43)** Develop an algorithm that displays a countdown from 30 to 1, marking the numbers that are divisible by 4, exactly as shown below:
*30 29 [28] 27 26 25 [24] 23 22 21 [20] 19 18 17 [16]...*

**44)** Create an algorithm that reads the initial value of the count, the final value, and the increment, then shows all values in the range:
*Ex: Enter the first value: 3. Enter the last value: 10. Enter the increment: 2. Count: 3 5 7 9 Finished!*

**45)** The above program will have a problem when we enter the first value greater than the last. Solve this problem with code that works in any situation.

**46)** Create a program that calculates and displays the result of the sum between 6 + 8 + 10 + 12 + 14 + ... + 98 + 100.

**47)** Develop an application that displays the result of the expression 500 + 450 + 400 + 350 + 300 + ... + 50 + 0 on the screen.

**48)** Make a program that reads 7 integers and displays their sum at the end.

**49)** Create a program that reads 6 integers and displays how many of them are even and how many are odd at the end.

**50)** Develop a program that randomly generates 20 numbers between 0 and 10 and displays on the screen:

	a) Which numbers were drawn
	b) How many numbers are above 5
	c) How many numbers are divisible by 3

**51)** Make an application that reads the price of 8 products. At the end, display on the screen what was the highest and lowest price entered.

**52)** Create an algorithm that reads the age of 10 people, displaying at the end:

	a) What is the average age of the group 
	b) How many people are over 18 years old
	c) How many people are under 5 years old
	d) What was the oldest age read

**53)** Make a program that reads the age and gender of 5 people, displaying at the end:

	a) How many men were registered
	b) How many women were registered
	c) The average age of the group
	d) The average age of men
	e) How many women are over 20 years old

**54)** Develop an application that reads the weight and height of 7 people, displaying on the screen:

	a) What was the average height of the group
	b) How many people weigh more than 90Kg
	c) How many people who weigh less than 50Kg are under 1.60m
	d) How many people who are over 1.90m tall weigh more than 100Kg.

**55)** ***[CHALLENGE]*** Let's improve the game we made in exercise 32. From now on, the computer will randomly choose a number between 1 and 10 and the player will have 4 attempts to try to guess it.


## 05 - WHILE WITH FLAG
**56)** Create a program that reads several numbers from the keyboard and shows the sum of them at the end. Note: The program will be interrupted when the number 1111 is entered.

**57)** Develop an application that reads the salary and gender of several employees.  At the end, show the total amount paid to men and the total paid to women. The program will ask the user whether he wants to continue or not whenever he reads the data of an employee.

**58)** Make an algorithm that reads the age of several students in a class. The program will stop when the age 999 is entered. At the end, show how many students are in the class and what is the average age of the group.

**59)** Create a program that reads the gender and age of several people. The program will ask the user whether he wants to continue or not for each person. At the end, show:

	a) what is the highest age read 
	b) how many men were registered 
	c) what is the age of the youngest woman 
	d) what is the average age among men

**60)** Develop an algorithm that reads the name, age and gender of several people. The program will ask the user whether he wants to continue or not. At the end, show:

	a) the name of the oldest person 
	b) the name of the youngest woman 
	c) the average age of the group 
	d) how many men are over 30 years old 
	e) how many women are under 18 years old

##  06 - REPEAT-UNTIL LOOP
**61)** Create a program that shows the following count on the screen using the "repeat until" structure: 
*0 3 6 9 12 15 18 21 24 27 30 Done!*

**62)** Make a program using the "repeat until" structure that reads the age of several people. At each loop, you should ask the user whether or not they want to continue entering data. At the end, when the user decides to stop, show on the screen:

	a) How many ages were entered 
	b) What is the average of the entered ages 
	c) How many people are 21 years old or older

**63)** Create a program using the "repeat until" structure that reads several numbers. At each loop, ask the user whether they want to continue or not. At the end, show on the screen:

	a) The sum of all values 
	b) What was the smallest value entered 
	c) The average of all values 
	d) How many values are even

## 07 - REPEAT WITH FOR
**64)** Develop a program using the "for" structure that shows the following count on the screen:
*0 5 10 15 20 25 30 35 40 Done!*

**65)** Develop a program using the "for" structure that shows the following count on the screen:
*100 90 80 70 60 50 40 30 20 10 0 Done!*

**66)** Write a program that reads any number and shows the multiplication table of that number, using the "for" structure. *Ex: Enter a value: 5. 5 x 1 = 5. 5 x 2 = 10. 5 x 3 = 15 (...)*

**67)** Make a program using the "for" structure that reads a positive integer number and shows a count on the screen from 0 to the entered value: *Ex: Enter a value: 9. Count: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, END!*

**68)** Create a program that reads the sex and weight of 8 people, using the "for" structure. At the end, show on the screen:

	a) How many women were registered 
	b) How many men weigh more than 100kg 
	c) The average weight among women 
	d) The heaviest weight among men

**69)** ***[CHALLENGE]*** Develop a program that reads the first term and the ratio of an AP (Arithmetic Progression), showing on the screen the first 10 elements of the AP and the sum of all the values ​​in the sequence.

**70)** ***[CHALLENGE]*** Make a program that shows the first 10 elements of the Fibonacci Sequence:
*1 1 2 3 5 8 13 21...*

## 08 - VECTORS

**71)** Create a program that automatically fills a numeric vector with 8 positions as follows:

|999|999|999|999|999|999|999|999|
|---|--|--|--|--|--|--|--|
|0|1|2|3|4|5|6|7|

**72)** Create a program that automatically fills (using logic, not just assigning directly) a numeric vector with 10 positions as follows:
|5|10|15|20|25|30|35|40|45|50|
|---|--|--|--|--|--|--|--|--|--|
|0|1|2|3|4|5|6|7|8|9|

**73)** Create a program that automatically fills (using logic, not just assigning directly) a numeric vector with 10 positions as follows:
|9|8|7|6|5|4|3|2|1|0|
|---|--|--|--|--|--|--|--|--|--|
|0|1|2|3|4|5|6|7|8|9|

**74)** Create a program that automatically fills (using logic, not just assigning directly) a numeric vector with 10 positions as follows:
|5|3|5|3|5|3|5|3|5|3|
|---|--|--|--|--|--|--|--|--|--|
|0|1|2|3|4|5|6|7|8|9|

**75)** Create a program that automatically fills (using logic, not just assigning directly) a numeric vector with 15 positions with the first elements of the Fibonacci sequence:
|1|1|2|3|5|8|13|21|34|55|89|144|233|377|610|987|
|---|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|
|0|1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|

**76)** Create a program that automatically fills a numeric array with 7 randomly generated numbers by the computer and then displays the generated values on the screen.

**77)** Make a program that reads 7 names of people and stores them in an array. In the end, show a list with all the names entered, in the reverse order of when they were entered.

**78)** Write a program that reads 15 numbers and stores them in an array. At the end, display the entire array on the screen and then show in which positions values that are multiples of 10 were entered.

**79)** Develop a program that reads 10 integer numbers and stores them in an array. In the end, show which are the even numbers that were entered and in which positions they are stored.

**80)** Create an algorithm that fills a 30-position array with numbers between 1 and 15 randomly generated by the computer. After that, ask the user to enter a number (key) and your program should show in which positions this key was found. Also show how many times the key was generated.

**81)** Create a program that reads the age of 8 people and stores them in an array. At the end, show:

	a) What is the average age of the registered people 
	b) In which positions we have people over 25 years old 
	c) What was the highest age entered (there may be repetitions) 
	d) In which positions we entered the highest age

**82)** Make an algorithm that reads the grade of 10 students in a class and stores them in an array. In the end, show:

	a) What is the class average 
	b) How many students are above the class average 
	c) What was the highest grade entered 
	d) In which positions the highest grade appears

**83)** ***[CHALLENGE]*** Create a logic that fills an array of 20 positions with random numbers (between 0 and 99) generated by the computer. Soon after, show the generated numbers and then sort the array in ascending order, showing in the end the ordered values.

**84)** Create a program that reads the name and age of 9 people and stores these values ​​in two arrays, in related positions. In the end, show a list containing only the data of underage people.

**85)** Make an algorithm that reads the name, gender, and salary of 5 employees and stores this data in three arrays. In the end, show a list containing only the data of female employees who earn more than R$5,000.
