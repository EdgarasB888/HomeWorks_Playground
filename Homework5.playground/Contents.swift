import UIKit

/*
Exercise 1
1.Create new Class Orange(Fruit). Inside the Class declare:
     color = ""
     teste = ""
     weight = 0.0
 2.Make Class example from Orange Class and named it as someOrange.
 3.Give specific value for:
     color = "Orange"
     taste = "Sweet"
     weight = 0.66
 4.print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")
*/

//MARK: - 1.1

class Orange
{
    var color = ""
    var taste = ""
    var weight = 0.0
}

//MARK: - 1.2

let someOrange = Orange()

//MARK: - 1.3

someOrange.color = "Orange"
someOrange.taste = "Sweet"
someOrange.weight = 0.66

//MARK: - 1.4

print("My \(someOrange.weight) kg orange has \(someOrange.color) color and \(someOrange.taste) taste")


/*
Exercise 2
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

//MARK: - 2.1

class Figure
{
    var height: Float
    var width: Float
    var radius: Float = 0.0
    var area: Float = 0.0
    var perimeter: Float = 0.0
  
//MARK: - 2.2
    
    init(height: Float, width: Float)
    {
        self.height = height
        self.width = width
    }
    
    func areaOfFigure() -> Float
    {
        return area
    }
    
    func perimeterOfFigure() -> Float
    {
        return perimeter
    }
    
}

//MARK: - 2.3

class Rectangle: Figure
{
    override func areaOfFigure() -> Float
    {
        return height * width
    }
    
    override func perimeterOfFigure() -> Float
    {
        return 2 * (height + width)
    }
    
//MARK: - 2.4
    
    func description()
    {
        print("Rectangle area is: \(areaOfFigure()), and perimeter Of Figure is: \(perimeterOfFigure())")
    }
}

//MARK: - 2.5

let myRectangle = Rectangle(height: 5, width: 2)

//MARK: - 2.6

myRectangle.description()
