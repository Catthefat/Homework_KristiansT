import UIKit
import CoreFoundation

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam = "Boys"

var resultsOfGames = ["Brooklyn Nets": "99:89",
                      "Dallas Mavericks": "87:93",
                      "Washington Wizards": "117:112"]

for (name, score) in resultsOfGames {
    print("\(myTeam) against \(name) scored - \(score)")
}

// MARK: different solution

func printResult(teamName name1: String, enemyTeam name2: String, endScore score: String) {
    print("\(name1) against \(name2) scored - \(score)")
    
}
printResult(teamName: "Boys", enemyTeam: "Washington Wizards", endScore: "117:112")

// MARK: testing

let myTeamm = "Boys"
let score = "117:112"
let enemyTeam = "Washington Wizards"
let resultsOfGames1 = [(myTeamm):(enemyTeam)]

for (team1, team2) in resultsOfGames1 {
    print("\(team1) against \(team2) scored - \(score)")
}



/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let pesos = [5, 10, 20, 50, 100, 200, 500]  //885

func calculatePesos(_ five: Int, _ ten: Int, _ twenty: Int, _ fifty: Int, _ hundred: Int, _ twoHundred: Int, _ fiveHundred: Int  ) {
    let totalPesos = (5 * five) + (10 * ten) + (20 * twenty) + (50 * fifty) + (100 * hundred) + (200 * twoHundred) + (500 * fiveHundred)
    print("I have \(totalPesos) pesos total in my wallet")
    return
}

calculatePesos(1, 1, 1, 1, 1, 1, 1)

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    }else {
        return false
    }
}
isEvenNumber(number: 2)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from: Int, to: Int) -> [Int] {
    let someNums = [Int](from...to)
    let someArray = (someNums)
    return someArray
}
var array = createArray(from: 1, to: 100)
print(array)

/*
 
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */


//if let index = array.contains(where: {$0 % 2 == 0}) {
//    print(index)
//}


// array.removeAll(where: { isEvenNumber() })

for i in array {
    if isEvenNumber(number: i){
        array.remove(at: array.firstIndex(of: i)!)
    }
}


var filteredArray = [Int]()
for i in stride(from: 0, to: array.count, by: 2) {
    filteredArray.append(array[i])
    
}
print(filteredArray)


let arr = array.filter({$0 % 2 != 0})
print(arr)
// correct answer, but not done in the proper way as the task described
