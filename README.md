
# Algorithms

In this repository, you will find the 100 exercises given in Gustavo Guanabara's Programming Logic Course executed in Kotlin. You can find the original file in [here](https://www.cursoemvideo.com/wp-content/uploads/2019/08/exercicios-algoritmos.pdf).

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

**35)** A car rental company needs to charge for its services. The rental of a car costs R$90 per day for a popular car and R$150 per day for a luxury car. In addition, the customer pays for the distance traveled. Create a program that reads the type of rented car (popular or luxury), how many rental days, and how many kilometers were traveled. At the end, show the price to be paid according to the following table:
  - Popular cars (R$90 rental per day)
  - Up to 100km traveled: R$0.20 per km
  - Over 100km traveled: R$0.10 per km
  - Luxury cars (R$150 rental per
