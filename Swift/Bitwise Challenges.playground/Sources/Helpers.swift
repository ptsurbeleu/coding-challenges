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

/// Logical bit shift operator declaration.
infix operator >>>: BitwiseShiftPrecedence

/// Logical bit shift operator implementation.
///
/// - Parameter x: An integer to apply logical bitwise right shift operator to.
/// - Parameter y: A number of bits to shift to the right.
public func >>>(x: Int, y: Int) -> Int {
    // Convert both signed numbers into unsigned ones and shift bits
    let bits = UInt(bitPattern: x) >> UInt(bitPattern: y)
    // Translate resulting bits into a signed integer
    return Int(bitPattern: bits)
}

/// Converts specified bit pattern into a signed integer.
/// Use ALT + M to type µ.
///
/// - Parameter bitPattern: An unsigned integer that represents bit pattern to convert.
public func µ(_ bitPattern: UInt) -> Int {
    // NOTE: Without this helper we cannot use hexadecimal or binary literals
    // that represent bit patterns overflowing positive range of Int
    return Int(bitPattern: bitPattern)
}
