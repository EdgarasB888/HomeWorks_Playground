import UIKit
import Security

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */

//MARK: - 1

enum CalculationType: String
{
    case addition /*= "+"*/
    case subtraction /*= "-"*/
    case multiplication /*= "*" */
    case division /* =  "/" */
}

/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
 */

//MARK: - 1.1

func calculateResult(firstNumber numberOne: Int, andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int
{
    var result = numberOne
    
    switch calculationType
    {
        case .addition:
            result += numberTwo
        case .subtraction:
            result -= numberTwo
        case .multiplication:
            result *= numberTwo
        case .division:
            result /= numberTwo
    }
    
    print("Result: \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    
    return result
}

/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/

//MARK: - 1.2

let number1 = 5
let number2 = 2

calculateResult(firstNumber: number1, andSecondNumber: number2, withCalculationType: .addition)
calculateResult(firstNumber: number1, andSecondNumber: number2, withCalculationType: .subtraction)
calculateResult(firstNumber: number1, andSecondNumber: number2, withCalculationType: .multiplication)
calculateResult(firstNumber: number1, andSecondNumber: number2, withCalculationType: .division)

/*
Exercise 2.1
Make example of struct Car with the name audiQ7
Make a copy of audiQ7 and name it audiTT.
Provide the correct name for audiTT
 
Than run getSpecs() for audiQ7 and audiTT
 */

//MARK: - 2.1

struct Car
{
    var make: String?
    var model: String?
    var fuelType: String?
    var horsePower: Double?
    
    func getSpecs()
    {
        print("Make: \(make ?? ""), model: \(model ?? ""), fuel type: \(fuelType ?? ""), horse power: \(horsePower ?? 0.0)")
    }
}

let audiQ7 = Car(make: "Audi", model: "Q7", fuelType: "Diesel", horsePower: 270)

var audiTT = audiQ7
audiTT.model = "TT"

audiQ7.getSpecs()
audiTT.getSpecs()





