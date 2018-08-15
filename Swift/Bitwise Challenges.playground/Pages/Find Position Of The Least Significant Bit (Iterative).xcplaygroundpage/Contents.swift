//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/15/
 
 Write a function to return position of the only least significant bit set in the given integer.
 
 
 EXAMPLE:
 
    Input: n = 0x40 (eq. 0b0100_0000)
 
    Output: 6
 
 
 EXAMPLE:
 
    Input: n = 0x50000 (eq. 0b0101_0000_0000_0000_0000)
 
    Output: 16
 
 */

/// Finds position of the least significant bit (iterative).
///
func position(n: Int) -> Int {
    // Safe-guard against 0
    if n == 0 { return 0 }
    // Extract only the least significant bit
    let nn = xfs(bitPattern: n)
    // Define search range of bits, from 0 (LSB) to 63 (MSB)
    var lsb: UInt = 0, msb: UInt = 63
    // Define head of the search and its value
    var head: UInt = 0, x: UInt = 0
    // Iterate over the range until the answer is found
    while msb >= lsb && x != nn {
        // Calculate head of the range
        head = lsb + (msb - lsb) / 2
        // Calculate head's power of 2
        x = 1 << head
        // Adjust search range from either MSB or LSB side
        if x > nn {
            // Update search range and adjust MSB
            msb = head - 1
            // Proceed to the next search round
            continue
        }
        // Update search range and adjust LSB
        lsb = head + 1
    }
    // Here is our answer
    return 1 + Int(bitPattern: head)
}


// Assert iterative implementation
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
