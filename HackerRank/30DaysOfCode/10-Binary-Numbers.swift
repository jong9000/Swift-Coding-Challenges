import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let binaryNumber = String(n, radix:2)

var consecutiveOnes = 0
var maxConsecutiveOnes = 0

for char in binaryNumber {
    if char == "1" {
        consecutiveOnes += 1
    } 
    
    if consecutiveOnes > maxConsecutiveOnes {
        maxConsecutiveOnes = consecutiveOnes
    }

    if char == "0" {
        consecutiveOnes = 0
    }
}

print(maxConsecutiveOnes)
