import Foundation

/// Converts a hexadecimal character into a number.
///
public func hex(c: Character) -> Int {
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
public func hex(n: Int) -> Character {
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
