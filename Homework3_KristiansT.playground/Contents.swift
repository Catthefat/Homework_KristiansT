import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

var deposit: Double = 500000
var rate: Double = 0.05   // 5%
var period = 5
var finalAmount: Double = 0
var profit: Double = 0

for _ in 1...period {
    finalAmount = deposit * pow(1 + rate, Double(period))
    finalAmount = round(finalAmount * 100) / 100
    let profit1 = finalAmount - deposit
    profit = round(profit1 * 100) / 100
    
}
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(finalAmount) Eur !")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

var myArray = [1, 2, 3, 4, 5, 6, 7, 8]
for evenNumber in myArray{
    if evenNumber % 2 == 0 {
        print("My even numbers are: \(evenNumber)")
    }
}

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */


//var guessedNum = Int.random(in: 1...5)
for counter in 1...6 {
    let randomNumber = Int.random(in: 1...5)
    if counter == randomNumber{
        print("Number 5 will be after \(counter) shuffles")
        break
    }else {
        print("not number 5")
    }
}


/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
var bugClimbed: Double = 0
let electricPost: Double = 10
//let climbDay: Double = 2
//let slideNight = -1
var numberOfDays: Double = 0

while bugClimbed < electricPost {
    bugClimbed += 1
    bugClimbed -= 0.5
    numberOfDays += 0.5
        if bugClimbed == electricPost{
            //print("bug will spend \(numberOfDays) days to reach top of the post")
            break
        }
    print("bug will spend \(numberOfDays) days to reach top of the post")

}

