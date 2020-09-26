import Foundation

/*
 * Define an ErrorType
 */
enum StringToIntTypecastingError: Error {
    case BadString
}

/*
 * If typecasting is not possible, throw exception, otherwise return the Integer value
 */
func stringToInt(inputString: String) throws -> Int {

    guard let intConversion = Int(inputString) else {
        throw StringToIntTypecastingError.BadString
        print("Bad String")
    }
    return intConversion
}

/*
 * Read the input
 */
let inputString = readLine()!

do {
    try print(stringToInt(inputString: inputString))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}
