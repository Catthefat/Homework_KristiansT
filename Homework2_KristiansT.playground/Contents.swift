import UIKit
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */

var first: Float = 1.1
var second: Float = 2.2232
var sum: Double = Double(first) + Double(second)
print(sum)



/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne = 45
var numberTwo = 20
let result: Int = numberOne / numberTwo
let remainder: Int = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(remainder)")



/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var price = 1000
var qty = 7

if qty >= 10 {
    price = 850
}else if qty >= 5{
    price = 900
}else {
    price = 1000
}

var totalSum = price * qty

print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

let userInputAge: String = "33a"
let convertToInt = Int(userInputAge)
if convertToInt == nil {
    print("Can't convert string \(userInputAge) to an int")
}else {
    print("Can convert string \(userInputAge) to an int")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

//my age since day i was born (years, months and days) on 09.11.2021: 23 years, 5 months, 22days
let monthOfBirth = 5
let currentMonth = 11
let averageDaysInMonth = 30  //average days in a month
let totalYearsFromBirth = 2021 - 1998
let monthsFromBirth = totalYearsFromBirth * 12
let monthDifference = currentMonth - monthOfBirth
let totalMonthFromBirth = monthDifference + monthsFromBirth //this number is rounded up

let RFC3339DateFormatter = DateFormatter()
RFC3339DateFormatter.dateFormat = "yyyy-MM-dd"

let string = "1998-05-18"
let date = RFC3339DateFormatter.date(from: string)
let currentDate = Date()

let diffComponents = Calendar.current.dateComponents([.hour], from: date!, to: currentDate)
let hours = diffComponents.hour
let totalDaysFromBirth = hours! / 24


print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")



/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

switch monthOfBirth {
case 1...3:
      print("I was born in the 1st quarter")
case 4...6:
      print("I was born in the 2nd quarter")
case 7...9:
      print("I was born in the 3rd quarter")
case 10...12:
      print("I was born in the 4th quarter")
    default:
        print("Enter the corret month")
}
