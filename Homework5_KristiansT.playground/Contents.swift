import UIKit

/*
Exercise 1
1.Create new Parent(Superclass) Class Figure. Inside the Class declare:
         height: Float
         width: Float
         radius: Float
         square: Float
         perimeter: Float
 2. init(height: Float, width: Float) and 2 methods:
         func squareOfFigure() -> Float { return square }
         func perimeterOfFigure() -> Float { return perimeter }
 3.Create new Child(Subclass) Rectangle of Paret Class Figure
 3.Inside Rectangle override func squareOfFigure() -> Float to calculate and return square and override func perimeterOfFigure() -> Float to calculate and return perimeter !
 4.Inside Rectangle make a func description() where we can print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
 5.Make Class example from Rectangle Class and named it as myRectangle and give a value as you want for height and width.
 6.Finally call myRectangle.description()
*/

class Figure {
    var height: Float = 0
    var width: Float = 0
    var radius: Float = 0
    var square: Float = 0
    var perimeter: Float = 0
    
    init(height: Float, width: Float){
        self.height = height
        self.width = width
    }
    func squareOfFigure() -> Float {
        return square
    }
    func perimeterOfFigure() -> Float {
        return perimeter
    }
    
}

class Rectangle: Figure {
    override func squareOfFigure() -> Float {
        return height * width
    }
    override func perimeterOfFigure() -> Float {
        return 2 * (height + width)
    }
    func description() {
        print("Rectangle area is: \(squareOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
    }
}
var myRectangle = Rectangle(height: 23.5, width: 40)
myRectangle.description()

/*
 Exercise 2
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
  Don't forget to return result

Declare two numbers.
Call func 4 times for all calculateResult
*/

enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

func calculateResult (firstNumber numberOne: Int, secondNumber numberTwo: Int, CalculationType calculationType: CalculationType) -> Int {
    var result = numberOne
    switch calculationType {
    case .addition:
        result += numberTwo
    case .subtraction:
        result -= numberTwo
    case .multiplication:
        result *= numberTwo
    case .division:
        result /= numberTwo
    }
    print("Result: \(numberOne) \(calculationType.rawValue) \(numberTwo) = \(result)")
    return result

}

calculateResult(firstNumber: 10, secondNumber: 5, CalculationType: CalculationType.addition)
calculateResult(firstNumber: 10, secondNumber: 5, CalculationType: CalculationType.subtraction)
calculateResult(firstNumber: 10, secondNumber: 5, CalculationType: CalculationType.multiplication)
calculateResult(firstNumber: 10, secondNumber: 5, CalculationType: CalculationType.division)

/*
Exercise 3

Create struct Car with elements
    name: String
    productionYear: Int
    horsePower: Int

Create func getSpecs() print it with elements provided above
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
 
Than run getSpecs() for audiQ7 and audiTT
 */


struct Car {
    var name: String
    var productionYear: Int
    var horsePower: Int
    
    func getSpecs() {
        print("This is an \(name), it was made in \(productionYear) and has \(horsePower) horse power")
    }
}
var audiQ7 = Car(name: "Audi Q7", productionYear: 2021, horsePower: 248)
audiQ7.getSpecs()
var audiTT = Car(name: "Audi TT", productionYear: 2021, horsePower: 302)
audiTT.getSpecs()
