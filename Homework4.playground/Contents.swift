import UIKit

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

//MARK: - 1

let myTeam = "Boys"

var resultsOfGames: [String: [String]] =
[
    "Brooklyn Nets" : ["99:89", "109:99"],
    "Dallas Mavericks" : ["87:93", "104:97"],
    "Washington Wizards" : ["117:122", "107:112"]
]

for (teamName, result) in resultsOfGames
{
    print("\(myTeam) against \(teamName) scored - \(result[0]), \(result[1])")
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

//MARK: - 2

let moneyBills: [Int] = [5, 10, 20, 50, 100, 200, 500]

func calculateCash(moneyBills bills: [Int]) -> Int
{
    var cashCount = 0
    
    for bill in bills
    {
        cashCount += bill
    }
    
    return cashCount
}

let myCash = calculateCash(moneyBills: moneyBills)
print("My amount of cash:", myCash)

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

//MARK: - 3

func isNumberEven(numberGiven number: Int) -> Bool
{
    if(number % 2 == 0)
    {
        return true
    }
    return false
}

isNumberEven(numberGiven: 5)
isNumberEven(numberGiven: 10)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

//MARK: - 4

func createArray(calculateFrom from: Int, calculateTo to: Int) -> [Int]
{
    var arrayToReturn: [Int] = []
    
    for number in from...to
    {
        arrayToReturn.append(number)
    }
    
    return arrayToReturn
}

var myArray = createArray(calculateFrom: 1, calculateTo: 100)
print(myArray)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

//MARK: - 5

for number in myArray
{
    /*
    if isNumberEven(numberGiven: number)
    {
        myArray.remove(at: myArray.firstIndex(of: number)!)
    }
     */
    if isNumberEven(numberGiven: number)
    {
        if let unwrapped = myArray.firstIndex(of: number)
        {
            myArray.remove(at: unwrapped)
        }
        else
        {
            print("No number at required index!")
        }
    }
}

print("Array after modifications")
print(myArray)

//another way of solving
/*
func isEvenNumber(_ pickedNumber: Int) -> Bool
{
    return pickedNumber % 2 == 0
}

isEvenNumber(2)

func createArray(from: Int, to: Int) -> [Int]
{
    var newArray: [Int] = []
    
    for arrayElement in from...to
    {
        newArray.append(arrayElement)
    }
    
    return newArray
}

var myArray = createArray(from: 1, to: 100)

let arrayOfInts = myArray

for i in 0..<arrayOfInts.count
{
    switch isEvenNumber(arrayOfInts[i])
    {
        case true:
            if let myIndex = myArray.firstIndex(of: arrayOfInts[i])
            {
                myArray.remove(at: myIndex)
            }
        default:
            break
    }
}

print("arrayOfInts: ", myArray)
let resultsFilter = myArray.filter({$0 % 2 != 0})
print("resultFilter: ", resultsFilter)
*/
