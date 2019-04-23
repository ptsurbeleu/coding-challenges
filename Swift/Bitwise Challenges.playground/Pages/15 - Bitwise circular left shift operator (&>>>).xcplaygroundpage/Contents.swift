//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/27/
 
 Write a function to implement bitwise circular left shift `&>>>` operator.
 
 
 EXAMPLE:
 
    Input: 0x0000_0000_0000_00ff &>>> 8
 
    Output: 0xff00_0000_0000_0000
 
 */

/// Bitwise circular left shift operator declaration.
infix operator &>>>: BitwiseShiftPrecedence

/// Bitwise circular left shift operator declaration implementation.
///
/// - Parameter lhs: An integer to apply the shift operator to.
/// - Parameter rhs: A number of bits to shift to the left.
public func &>>>(lhs: Int, rhs: Int) -> Int {
    // Calculate size of the type in bits
    let typesize = MemoryLayout.size(ofValue: lhs) * 8
    // Safe-guard from out-of-bounds issues and throw runtime error
    if rhs < 0 || rhs >= typesize {
        fatalError("Shift amount is out-of-bounds of type size in bits") }
    // Convert both signed numbers into unsigned ones
    let xx = UInt(bitPattern: lhs), yy = UInt(bitPattern: rhs)
    // Safe-guard shift offset to stay within the range
    let offset = yy == 0 ? yy : UInt(bitPattern: typesize - rhs)
    // Convert resulting bits into a signed integer
    return Int(bitPattern: (xx << offset) | (xx >> yy))
}

// Assert a few interesting test cases
0x0000_0000_0000_00ff &>>> 0 == µ(0x0000_0000_0000_00ff)
0x0000_0000_0000_00ff &>>> 1 == µ(0x8000_0000_0000_007f)
0x0000_0000_0000_0fff &>>> 4 == µ(0xf000_0000_0000_00ff)
0x0000_0000_000f_00ff &>>> 4 == µ(0xf000_0000_0000_f00f)
0x0000_0000_0000_ffff &>>> 7 == µ(0xfe00_0000_0000_01ff)
0x0000_0000_0000_00ff &>>> 8 == µ(0xff00_0000_0000_0000)

// NOTE: Uncomment these lines (one at a time) to see 
// the safe-guard in action (eq. runtime error)
//
// 0x0000_0000_0000_ffff &>>> -1 == µ(0xfe00_0000_0000_01ff)
// 0x0000_0000_0000_ffff &>>> 64 == µ(0xfe00_0000_0000_01ff)

//: [Next](@next)
