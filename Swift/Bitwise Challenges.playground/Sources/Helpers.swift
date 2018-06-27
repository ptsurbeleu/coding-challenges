import Foundation

/// Extracts the specified bit from the given number.
///
/// - Parameter num: An integer value to extract specified bit from.
/// - Parameter i: A position of the bit to extract (0-based).
public func bit(_ num: Int, _ i: Int) -> Int {
    // Perform logical shift using unsigned integers
    let bits = UInt(bitPattern: num) >> UInt(bitPattern: i)
    // Convert bits of unsigned integer into signed integer
    return Int(bitPattern: bits) & 1
}

/// Returns a Boolean value that indicates whether
/// the bit in the specified position is OFF (eq. 0).
///
/// - Parameter num: An integer value to check the bit.
/// - Parameter i: A position of the bit to check (0-based).
public func bitoff(_ num: Int, _ i: Int) -> Bool {
    return bit(num, i) == 0
}

/// Returns a Boolean value that indicates whether
/// the bit in the specified position is ON (eq. 1).
///
/// - Parameter num: An integer value to check the bit.
/// - Parameter i: A position of the bit to check (0-based).
public func biton(_ num: Int, _ i: Int) -> Bool {
    return bit(num, i) == 1
}
