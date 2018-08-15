//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/16/
 
 Write a function to return position of the only least significant bit set in the given integer.
 
 
 EXAMPLE:
 
 Input: n = 0x40 (eq. 0b0100_0000)
 
 Output: 6
 
 
 EXAMPLE:
 
 Input: n = 0x50000 (eq. 0b0101_0000_0000_0000_0000)
 
 Output: 16
 
 */

/// Finds position of the least significant bit (recursive).
///
func position(n: Int, _ msb: UInt = 63, _ lsb: UInt = 0) -> Int {
    // Safe-guard from 0
    if n == 0 { return 0 }
    // Extract only the least significant bit
    let nn = xfs(bitPattern: n)
    // Calculate head of the range
    let head = lsb + (msb - lsb) / 2
    // Compute head's power of 2
    let x = 1 << head
    // Attempt to match bits
    if x == nn {
        // Here is our answer
        return 1 + Int(bitPattern: head)
    }
    // Adjust search range from either MSB or LSB side
    if x > nn {
        // Update search range and adjust MSB
        return position(n: n, head - 1, lsb)
    }
    // Update search range and adjust LSB
    return position(n: n, msb, head + 1)
}


// Assert recursive implementation
position(n: 0)       ==  0 // true
position(n: 1)       ==  1 // true
position(n: 0x40)    ==  7 // true
position(n: 0x50000) == 17 // true
position(n: 1 << 27) == 28 // true
position(n: 1 << 30) == 31 // true
position(n: 1 << 31) == 32 // true
position(n: 1 << 32) == 33 // true
position(n: 1 << 35) == 36 // true
position(n: 1 << 63) == 64 // true


//: [Next](@next)
