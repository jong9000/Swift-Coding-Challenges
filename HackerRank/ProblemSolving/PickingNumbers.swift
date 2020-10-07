import Foundation

func pickingNumbers(a: [Int]) -> Int {

    var set = Set(a)
    var numDict = [Int:Int]()
    var largestSubarrayLength = 0

    for num in a {
        if numDict[num] == nil {
            numDict[num] = 1
        } else {
            numDict[num]! += 1
        }
    }

    for num in set {
        if numDict[num]! > largestSubarrayLength {
            largestSubarrayLength = numDict[num]!
        }

        if numDict[num - 1] != nil {
            if numDict[num - 1]! + numDict[num]! > largestSubarrayLength {
                largestSubarrayLength = numDict[num - 1]! + numDict[num]!
            }
        }
        
        if numDict[num + 1] != nil {
            if numDict[num + 1]! + numDict[num]! > largestSubarrayLength {
                largestSubarrayLength = numDict[num + 1]! + numDict[num]!
            }
        }
    }
   
    return largestSubarrayLength
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let aTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
let a: [Int] = aTemp.split(separator: " ").map {
    if let aItem = Int($0) {
        return aItem
    } else { fatalError("Bad input") }
}

guard a.count == n else { fatalError("Bad input") }

let result = pickingNumbers(a: a)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
