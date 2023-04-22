package c_compound_conditions

// The Body Mass Index (BMI) is a value calculated based on a person's height and weight. According to the BMI value,
// we can classify the individual within certain ranges.
// below 18.5: Underweight. between 18.5 and 25: Ideal weight.
// between 25 and 30: Overweight. between 30 and 40: Obesity. above 40: Morbid obesity.
// Note: The BMI is calculated by the expression weight/height² (weight divided by the square of the height)

import kotlin.math.round

fun bmiScale() {
    print("Weight: ")
    val weight = readln().toDouble()

    print("Height: ")
    val height = readln().toDouble()

    val bmi = weight / (height * height)
    val _bmi = round(bmi)

    if (bmi >= 10 && bmi < 18.5) {
        println("----------------------------------------")
        println("------------- UNDERWEIGHT --------------")
        println("BMI: $_bmi")
        println("----------------------------------------")
    }

    else if (bmi >= 18.5 && bmi < 25) {
        println("----------------------------------------")
        println("--------------- HEALTHY ----------------")
        println("BMI: $_bmi")
        println("----------------------------------------")
    }

    else if (bmi >= 25 && bmi < 30) {
        println("----------------------------------------")
        println("------------- OVERWEIGHT ---------------")
        println("BMI: $_bmi")
        println("----------------------------------------")
    }

    else if (bmi >= 30 && bmi < 40) {
        println("----------------------------------------")
        println("---------------- OBESE -----------------")
        println("BMI: $_bmi")
        println("----------------------------------------")
    }

    else if (bmi >= 40) {
        println("----------------------------------------")
        println("---------- EXTREMELY OBESE -------------")
        println("BMI: $_bmi")
        println("----------------------------------------")
    }

    else {
        println("----------------------------------------")
        println("------------ INVALID BMI ---------------")
        println("----------------------------------------")
    }
}