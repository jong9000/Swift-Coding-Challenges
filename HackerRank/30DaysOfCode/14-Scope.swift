import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference: Int

    init(a: [Int]) {
        self.elements = a
        self.maximumDifference = 0
    }

    func computeDifference() {
        let sortedElements = elements.sorted()
        maximumDifference = abs(sortedElements.first! - sortedElements.last!)
    }

} // End of Difference class

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let d = Difference(a: a)

d.computeDifference()

print(d.maximumDifference)
