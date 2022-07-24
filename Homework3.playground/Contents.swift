import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

//MARK: - 1.1 (Compound interest)
//Formula - deposit = startDeposit(1 + rate/100)^period

let period = 5
let startDeposit: Double = 500000
var deposit: Double = startDeposit
var profit: Double = 0
let rate: Double = 5

for _ in 1...period
{
    deposit += deposit * rate/100
}

profit = deposit - startDeposit

print("(Compound interest) Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")

//MARK: - 1.2 (Simple interest)
//Formula - deposit = startDeposit(1 + rate/100) * period

deposit = startDeposit
profit = 0

for _ in 1...period
{
    deposit += startDeposit * rate/100
}

profit = deposit - startDeposit

print("(Simple interest) Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

//MARK: - 2

let arrayOfIntegers: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
var evenNumbers: [Int] = []


for integer in arrayOfIntegers
{
    if integer % 2 == 0
    {
        evenNumbers.append(integer)
    }
}

print("My even numbers are: \(evenNumbers)")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

//MARK: - 3

/*
var counter = 0

for _ in 1...100000
{
    let randomNumber = Int.random(in: 1..<100)
    counter = randomNumber - counter
    print("Number \(randomNumber) will be after \(counter) shuffles")
    
    if(counter == 0)
    {
        break;
    }
}
*/

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

//MARK: - 4

let postLength = 10
var bugsCurrentPosition = 0
var numberOfDays = 0
let dailyClimbedHeight = 2
let nightlySlidHeight = 1

while true
{
    bugsCurrentPosition += dailyClimbedHeight
    numberOfDays += 1
    if(bugsCurrentPosition == postLength)
    {
        break;
    }
    bugsCurrentPosition -= nightlySlidHeight
}

print("Bug will spend \(numberOfDays) days to reach the top of the post")
