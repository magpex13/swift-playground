/*import Cocoa

var greeting = "Hello, playground"

print("Hello everyone")
*/

//Working with constants and variables

/*
let day = "Monday"
let dailyTemperature = 75
print("Today is \(day). Rise and shine!")
print("The temperature on \(day) is \(dailyTemperature)°F")

var temperature = 70
print("The temperature on \(day) morning is \(temperature)°F")
temperature = 80
print("The temperature on \(day) evening is \(temperature)°F")

let weeklyTemperature = 75
temperature = weeklyTemperature
print("The average temperature this week is \(temperature)°F")
*/

//Operators and data types

/*
let levelScore = 10
var gameScore = 0

gameScore += levelScore
print("The game's score is \(gameScore)")

var levelBonusScore = 10.0
levelBonusScore = 20
print("The level's bonus score is \(levelBonusScore).")

gameScore += Int(levelBonusScore)
print("The game's final score is \(gameScore)")

let levelLowestScore = 50
let levelHighestScore = 99
let levels = 10
let levelScoreDifference = levelHighestScore - levelLowestScore
let levelAverageScore = levelScoreDifference / levels
print("The level's average score is \(levelAverageScore)")

let averageLevelScore = Double(levelScoreDifference)/Double(levels)
print("The level's average score is \(averageLevelScore)")
*/

//Working with strings in Swift

/*
let day = "Monday"
print("Today is \(day)")

let hour = "6"
let minutes = "15"
let period = "PM"
var time = hour + ":" + minutes + " " + period
print("It is \(time)")

let timezone = "PST"
time += " \(timezone)"
print("It is \(time)")
print("It is \(time) on \(day)")

let shortDay = day.prefix(3)
print("Today is \(shortDay)")

print("It is \(time) on \(shortDay)")
*/


//Work with conditional statements in Swift

/*
let freeApp = true

if freeApp == true {
    print("You are using the free version of the app. Buy the full version of the app to get access to all of its features.")
}

let morningTemperature = 70
let eveningTemperature = 80

if morningTemperature < eveningTemperature {
    print("Morning is the coolest temperature")
} else {
    print("Evening is the coolest temperature")
}

let temperatureDefree = "Fahrenheit"

if temperatureDefree == "Fahrenheit"{
    print("Using fahrenheit degrees")
} else {
    print("Not using fahrenheit degrees")
}

if temperatureDefree == "Fahrenheit" || temperatureDefree == "Celsius" {
    print("App configured properly")
} else {
    print("App not configured properly")
}

switch temperatureDefree {
case "Fahrenheit": print("Fahrenheit configured")
case "Celsius": print("Celsius configured")
default: print("Unknown degrees configured")
}
*/

/*
 let numberPlate = "WW87GP"
 for character in numberPlate {
 print("character is = \(character)")
 }
 */

//Using conditions and loops

/*
let levels = 10
let freeLevels = 4
let bonusLevel = 3

for item in 1...levels {
    if item == bonusLevel {
        print("Skip bonus level\(bonusLevel)")
        continue
    }
    
    print("Play level \(item)")
    
    if(item == freeLevels) {
        print("Free levels area \(freeLevels) and paid levels are \(levels - freeLevels) left")
        break
    }
}
*/


//Work with optionals in Swift

/*
var password = "1234"
let passcode: Int? = Int(password)

print("Passcode \(passcode!)")

password = "hello world"

if let code = Int(password) {
    print("The passcode is \(code)")
} else {
    print("Invalid passcode!")
}

let accessCode: Int

if let code = Int(password) {
    accessCode = code
} else {
    accessCode = 1111
}

print("The passcode is \(accessCode)")

let firstPassword = "hello"
let secondPassword = "world"

if let firstPasscode = Int(firstPassword),
  let secondPasscode =
    Int(secondPassword)
{
  print(
    "The first passcode of the app is \(firstPasscode) and the second passcode of the app is \(secondPasscode)."
  )
} else {
  print("Invalid passcodes!")
}

let firstAccessCode: Int
let secondAccessCode: Int

if let firstPasscode = Int(firstPassword),
    let secondPasscode = Int(secondPassword) {
    firstAccessCode = firstPasscode
    secondAccessCode = secondPasscode
} else {
    firstAccessCode = 1111
    secondAccessCode = 2222
}

print(
  "The first passcode of the app is \(firstAccessCode) and the second passcode of the app is \(secondAccessCode)."
)
*/


//Arrays in Swift

/*
var levelScores: [Int] = []

if levelScores.count == 0 {
    print("Start playing the game!")
}

let firstLevelScore = 10
levelScores.append(firstLevelScore)

print("The first level's score is \(levelScores[0])")

let levelBonusScore = 40
levelScores[0] += levelBonusScore

print("The first level's score with bonus is \(levelScores[0])")

let freeLevelScores = [20, 30]
levelScores.append(freeLevelScores[0])
levelScores.append(freeLevelScores[1])

let freeLevels = 3

if levelScores.count == freeLevels {
    print("You have to buy the game in order to play its full version.")
    
    levelScores = []
    print("Game restarted!")
}
*/


//Tuples

/*
let credentials = ("", -1111)

if credentials.0.count <= 0 || credentials.1 <= 0 {
    print("Invalid credentials!")
} else {
    print("The password is \(credentials.0) and the passcode is \(credentials.1)")
}

let fullCredentials = (password: "pass", passcode: 1111)

if fullCredentials.0.count <= 0 || fullCredentials.1 <= 0 {
    print("Invalid credentials!")
} else {
    print("The password is \(fullCredentials.0) and the passcode is \(fullCredentials.1)")
}
*/


//Dictionaries in Swift

/*
var weeklyTemperatures: [String : Int] = [:]
weeklyTemperatures["Monday"] = 70
weeklyTemperatures["Tuesday"] = 75
weeklyTemperatures["Wednesday"] = 80
weeklyTemperatures["Thursday"] = 85
weeklyTemperatures["Friday"] = 90
weeklyTemperatures["Saturday"] = 95

weeklyTemperatures["Monday"]! += 30

print("The temperature on Monday is \(weeklyTemperatures["Monday"]!)ºF.")

if let temperature = weeklyTemperatures["Sunday"] {
    print("The value is \(temperature)")
} else {
    weeklyTemperatures["Sunday"] = 100
    print("The temperature on Sunday is \(weeklyTemperatures["Sunday"]!)ºF.")
}

if weeklyTemperatures.count == 7 {
    print("You have access to the weather forecast of the whole week.")
    weeklyTemperatures = [:]
    print("Reset weekly temperatures for next week!")
}
*/


//Using loops with collection types

/*
let levelScores = [10, 20, 30, 40, 50, 60, 70]

for (level, score) in levelScores.enumerated() {
    print("he score of level \(level + 1) is \(score)")
}

var gameScore = 0
for item in levelScores {
    gameScore += item
}
print ("The output should display that the final game score is \(gameScore).")

let weeklyTemperatures: [String : Int] = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95, "Sunday": 100]

for (day, temperature) in weeklyTemperatures {
    print("current day is \(day) and temperature is \(temperature)")
}

let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

let temperatures = [70, 75, 80, 85, 90, 95, 100]

for index in 0...6 {
    print("The temperature on \(days[index]) is \(temperatures[index])°F.")
}
*/

//Practice using functions

/*
var goldBars = 0

func unlockTreasureChest(inventory : Int) -> Int {
    inventory + 100
}

goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)
goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)
goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)
*/

//Practice writing succinctly expressive functions

/*
var goldBars = 0

func incrementInventory(_ inventory: inout Int, by amount: Int = 100) {
    inventory += amount
}

incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars, by: 300)
print(goldBars)
incrementInventory(&goldBars, by: 50)
print(goldBars)
*/


//Practice using closures

/*
var goldBars = 0
let unlockTreasureChest = {(inventory: inout Int)  in inventory += 100}
unlockTreasureChest(&goldBars)
print(goldBars)
*/


//Use functions to modularize a program

/*
var goldBars = 100
func spendTenGoldBars(from inventory: inout Int, completion: (Int) -> Void) {
    inventory -= 10
    completion(inventory)
}

print("You had \(goldBars) gold bars.")
spendTenGoldBars(from: &goldBars) { goldBars in print("You spent ten gold bars.")
    print("You have \(goldBars) gold bars.")
}
*/


//Create a structure with a mutating method

/*
struct TableReservation {
    var name: String
    let tableNumber: Int
    mutating func updateBooking(updatedName: String) {
        name = updatedName
    }
}

var johnBooking = TableReservation(name: "Jhon", tableNumber: 1)
print(johnBooking)

johnBooking.updateBooking(updatedName: "Maria")
print(johnBooking)
*/


//Create classes with stored and computed properties

class LocalFile {
    let name: String
    let fileExtension: String
    
    var fullFileName: String {
        name + fileExtension
    }
    
    init(name: String, fileExtension: String) {
        self.name = name
        self.fileExtension = fileExtension
    }
}

let file = LocalFile(name: "image", fileExtension: ".png")
print(file.fullFileName)
