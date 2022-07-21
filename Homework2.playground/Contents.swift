import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 
 */

//MARK: - 1.1

var firstFloat: Float = 3.14
var secondFloat: Float = 42.0

//MARK: - 1.2

var myDoubleNumber: Double = (Double)(firstFloat + secondFloat)

//MARK: - 1.3

print("The result of Ex1 is: \(myDoubleNumber)")

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

//MARK: - 2.1

var numberOne = 256

//MARK: - 2.2

var numberTwo = 128

//MARK: - 2.3

let divisionResult = numberOne / numberTwo

//MARK: - 2.4

let remainderResult = numberOne % numberTwo

//MARK: - 2.5

print("When dividing \(numberOne) by \(numberTwo), the result is \(divisionResult), the remainder is \(remainderResult)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

//MARK: - 3

let qty = 6
var price = 1000
var totalSum = 0

if(qty >= 10)
{
    price = 850
    totalSum = price * qty
}
else if qty >= 5
{
    price = 900
    totalSum = price * qty
}
else
{
    totalSum = price * qty
}

print("new \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")


/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

//MARK: - 4

let userInputAge: String = "33a"

//let ageConvertedToInt: Int = (Int)userInputAge

if let ageConvertedToInt = Int(userInputAge)
{
    print("User input age: \(userInputAge)")
}
else
{
    print("Age cannot be converted to Int!")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

//MARK: - 5

let yearOfBirth = 2001
let monthOfBirth = 4
let dayOfBirth = 26

let currentYear = Calendar.current.component(.year, from: Date())
let currentMonth = Calendar.current.component(.month, from: Date())
let currentDay = Calendar.current.component(.day, from: Date())

var totalYearsFromBirth = 0
var totalMonthsFromBirth = 0
var totalDaysFromBirth = 0

if(currentMonth > monthOfBirth)
{
    totalYearsFromBirth = currentYear - yearOfBirth
}
else
{
    totalYearsFromBirth = currentYear - yearOfBirth - 1
}
if(currentDay > dayOfBirth)
{
    totalMonthsFromBirth = totalYearsFromBirth * 12 + (currentMonth - monthOfBirth)
}
else
{
    totalMonthsFromBirth = totalYearsFromBirth * 12 + (currentMonth - monthOfBirth) - 1
}

totalDaysFromBirth = totalYearsFromBirth * 12 * 30 + (currentMonth - 1) * 30 + currentDay

print("Total years: \(totalYearsFromBirth), total months: \(totalMonthsFromBirth), total days: \(totalDaysFromBirth) have passed")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

//MARK: - 6

switch monthOfBirth
{
case 1...3:
    print("I was born in the 1 quarter")
case 4...6:
    print("I was born in the 2 quarter")
case 7...9:
    print("I was born in the 3 quarter")
case 10...12:
    print("I was born in the 4 quarter")
default:
    print("Something went wrong!")
}
