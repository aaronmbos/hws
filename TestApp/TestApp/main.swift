//
//  main.swift
//  TestApp
//
//  Created by Aaron Bos on 2/13/24.
//

import Foundation

func checkpointOne() {
    let celsiusTemp = 0.0
    let fahrenheitTemp = (celsiusTemp * 9 / 5) + 32
    
    print("Temperature:\nCelsius: \(celsiusTemp)°\nFahrenheit: \(fahrenheitTemp)°")
}

func checkpointTwo() {
    let clubs = ["driver", "3W", "hybrid", "iron", "wedge", "putter", "putter"]
    
    print(clubs.count)
    print(Set(clubs).count)
}

func checkpointThree() {
    for i in 1...100 {
        if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
            print("FizzBuzz")
        } else if i.isMultiple(of: 3) {
            print("Fizz")
        } else if i.isMultiple(of: 5) {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

func haveSameLetters(one: String, two: String) -> Bool {
    // The return keyword is optional when there is only one line in a func
    one.sorted() == two.sorted()
}

enum ChkPtFourError : Error {
    case outOfBounds, noRoot
}

func checkpointFour(input: Int) throws -> Int {
    if input < 1 { throw ChkPtFourError.outOfBounds }
    if input > 10_000 { throw ChkPtFourError.outOfBounds }
    
    for i in 1...100 {
        if i * i == input {
            return i
        }
    }
    
    throw ChkPtFourError.noRoot
}

func runChkPtFour() {
do {
    print(try checkpointFour(input: 36))
} catch ChkPtFourError.outOfBounds {
    print("Invalid input")
} catch ChkPtFourError.noRoot {
    print("Unable to find square root")
} catch {
    print("An error occurred")
}
}

func checkpointFive() {
    let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]
    
    let filtered = luckyNumbers.filter { $0.isMultiple(of: 2) }
    let sorted = filtered.sorted()
    let mapped = sorted.map { "\($0) is a lucky number" }
    
    for num in mapped {
        print(num)
    }
}

struct Car {
    public let model: String
    public let numberOfSeats: Int
    private(set) var currentGear: Int = 1
    
    mutating func setGear(to newGear: Int) {
        if (newGear >= 1 && newGear <= 10) {
            currentGear = newGear
        } else {
            print("Invalid gear selection")
        }
    }
}

func checkpointSix() {
    var honda = Car(model: "Accord", numberOfSeats: 5)
    print(honda.currentGear)
    honda.setGear(to: 2)
    print(honda.currentGear)
}

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof")
    }
    
    init() {
        super.init(legs: 4)
    }
}

class Corgi: Dog {
    override func speak() {
        print("Woof corgi")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Woof poodle")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    func speak() {
        print("Meow")
    }
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
}

class Persian: Cat {
    override func speak() {
        print("This is sparta")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar")
    }
}

func checkpointSeven() {
    let corgi = Corgi()
    corgi.speak()
    
    let poodle = Poodle()
    poodle.speak()
    
    let persianCat = Persian(isTame: true)
    persianCat.speak()
    
    let lion = Lion(isTame: false)
    lion.speak()
}

protocol Building {
    var roomCount: Int { get set }
    var cost: Int { get set }
    var realEstateAgent: String { get set }
    func printSalesSummary()
}

struct House: Building {
    var roomCount: Int
    var cost: Int
    var realEstateAgent: String
    func printSalesSummary() {
        print("""
        House Sales Summary
        Room count: \(roomCount)
        Cost: \(cost)
        Real estate agent: \(realEstateAgent)
        """)
    }
}

struct Office: Building {
    var roomCount: Int
    var cost: Int
    var realEstateAgent: String
    func printSalesSummary() {
        print("""
        Office Sales Summary
        Room count: \(roomCount)
        Cost: \(cost)
        Real estate agent: \(realEstateAgent)
        """)
    }
}

func checkpointEight() {
    let office = Office(roomCount: 10, cost: 1_000_000, realEstateAgent: "Ben Hogan")
    let house = House(roomCount: 4, cost: 500_000, realEstateAgent: "Byron Nelson")
    
    office.printSalesSummary()
    house.printSalesSummary()
}

let checkpointNine = {(input: [Int]?) in input?.randomElement() ?? Int.random(in: 1...100)}

//checkpointOne()
//checkpointTwo()
//checkpointThree()
//print(haveSameLetters(one: "aSdf", two: "dfsa"))
//checkpointSix()
//checkpointSeven()
//checkpointEight()
print(checkpointNine([1,3]))
