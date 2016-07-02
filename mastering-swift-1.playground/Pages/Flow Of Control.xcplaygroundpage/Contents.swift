/*:
 ## Flow of Control and Operations
 Lesson 1 - Swift Review
 */
import Cocoa

enum Status {
    case Okay(status: Int)
    case Error(code: Int, message: String)
    case NA
}

let numbers = [0,1,2,3,4,5,6]
let words = [0 : "bird", 1 : "cat", 2 : "dog", 3 : "lion"]

for number in numbers {
    print(number)
}

for i in 0..<numbers.count {
    print(i)
}

for (key, word) in words where key % 2 == 0{
    print ("key \(key) and word \(word)")
}

var count = 0
repeat {
    print("hello")
    count+=1
} while count < 10

let someChar: Character = "a"

switch someChar {
case "a", "e", "i", "o", "u":
    print("vowel")
case "a"..."z":
    print("consonant")
default:
    print("consonant")
}

let lat = 43.068386, lon = -89.396439

switch(lat, lon) {
case let (lat, lon) where lon > -10.00 && lon < -50.00:
    print ("eu")
case let (lat, lon) where lon < -63.00 && lon > -168.00:
    print ("america")
default:
    break
}
