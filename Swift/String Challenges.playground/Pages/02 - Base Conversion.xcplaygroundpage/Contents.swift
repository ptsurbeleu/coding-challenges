//: [`Previous`](@previous)
/*:
 ## 02 - Base Conversion
 
 In the decimal number system, the position of a digit is used to signify the power of `10` that digit is to be multiplied with. For example, `314` denotes the number `3 * 100 + 1 * 10 + 4 * 1`.
 
 Write a program that performs base conversion. The input is a string `s`, an integer `from` and another integer `to`. The string represents an integer in base `from`. The output should be the string representing the integer in base `to`. You can assume that `(2 ≤ from, to ≤ 16)`. Use `A` to represent `10`, `B` for `11`, ... and `F` for `15`.
 
 _HINT: What base can you easily convert to and from?_
    
    Input: s = "615", from = 7, to = 13
 
    Output: "1A7"
 
 */
/// "Sniff" a string and return a tuple with the string itself alongside with a flag indicating whether it represents a positive or negative number.  
///
func sniff(s: String) -> (str: String, negative: Bool) {
    let lhs = s.startIndex, rhs = s.index(after: lhs)
    if s[lhs] == "-" {
        return (String(s[rhs..<s.endIndex]), true)
    }
    return (s, false)
}

/// Converts a hexadecimal character into a number.
///
func hex(c: Character) -> Int {
    // Pick the first one, there should be only one
    let fs = c.unicodeScalars.first!
    // Parse character into its numerical representation
    switch c {
        // Characters from A to F (inclusive)
        case "A"..."F": return Int(fs.value &- 55)
        // Characters from a to f (inclusive)
        case "a"..."f": return Int(fs.value &- 87)
        // Characters from 0 to 9 (inclusive)
        case "0"..."9": return Int(fs.value &- 48)
        // Characters outside of the range
        default: return -1
    }
}

/// Converts number into a hexadecimal character
///
func hex(n: Int) -> Character {
    // Discard the sign and convert to UInt8 (ASCII encoding limits) 
    let nn = abs(n), uint8 = UInt8(nn)
    // Parse number into its hexadecimal representation
    switch abs(n) {
        // Numbers from 0 to 9 (inclusive)
        case 0...9: return Character(ascii: uint8 &+ 48)
        // Numbers from 10 to 15 (inclusive)
        case 10...15: return Character(ascii: uint8 &+ 55)
        // Numbers outside of the range
        default: return Character("")
    }
}

/// Converts a number (as a string) from one base to the other base.
///
func convert(s: String, from: Int, to: Int) -> String? {
    // Pre-processing of the string (eq. sign extraction)
    let tuple = sniff(s: s); var base10 = 0
    // Convert from the given base to the base10 first
    for c in tuple.str {
        // Attempt to parse character into a corresponding number
        let num = hex(c: c)
        // Verify parsing result, since it may fail
        if num == -1 { return nil }
        // Perform the decimal base conversion bit-by-bit
        base10 = base10 * from + num
    }
    // Get ready the output string
    var strout = ""
    // Convert from base10 to desired base
    repeat {
        // Extrace next number in the desired base and parse into the hexadecimal char
        let rmndr = base10 % to, char = hex(n: rmndr)
        // Prepend hexadecimal character to the output string
        strout.prepend(char)
        // Reduce base10 number by one position
        base10 /= to
    } while base10 != 0
    // Prepend '-' sign for negative numbers only
    if tuple.negative { strout.prepend("-") }
    // Here is the requested conversion result
    return strout
}
//: Assertions for `7 ~> 13` base conversion use cases
convert(s: "615", from: 7, to: 13) ?>> "1A7"
convert(s:   "7", from: 7, to: 13) ?>> "7"
//: Assertions for `13 ~> 7` base conversion use cases
convert(s: "1A7", from: 13, to: 7) ?>> "615"
convert(s: "1a7", from: 13, to: 7) ?>> "615"
//: Assertions for `10 ~> 2` base conversion use cases
convert(s: "0", from: 10, to: 2) ?>> "0"
convert(s: "1", from: 10, to: 2) ?>> "1"
convert(s: "2", from: 10, to: 2) ?>> "10"
convert(s: "3", from: 10, to: 2) ?>> "11"

convert(s: "-3", from: 10, to: 2) ?>> "-11"
convert(s: "-2", from: 10, to: 2) ?>> "-10"
convert(s: "-1", from: 10, to: 2) ?>> "-1"
//: Assertions for miscellaneous base conversion use cases
convert(s: "511288644", from: 10, to: 3) ?>> "1022122002011011110"
convert(s: "-1196028", from: 10, to: 12) ?>> "-498190"
convert(s: "124801614", from: 9, to: 15) ?>> "4CA91CD"
convert(s: "F2F1A7", from: 16, to: 13) ?>> "33B5C67"
convert(s: "-18222944", from: 10, to: 2) ?>> "-1000101100000111101100000"
convert(s: "21", from: 10, to: 10) ?>> "21"
convert(s: "-28114", from: 11, to: 12) ?>> "-1B22A"
convert(s: "-11010001111100000000", from: 2, to: 12) ?>> "-355768"
convert(s: "ffff", from: 16, to: 10) ?>> "65535"
convert(s: "-ffff", from: 16, to: 10) ?>> "-65535"
//: Assertions for edge use cases
convert(s: "1H9", from: 10, to: 2) ?>> nil
convert(s: "HHH", from: 16, to: 3) ?>> nil
convert(s: "XXX", from: 11, to: 4) ?>> nil
//: [`Next`](@next)
