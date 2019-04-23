//: [Previous](@previous)

/*
 
 Write a function to return a number that is represented by the most significant bit in the specified number.
 
 
 EXAMPLE:
 
    Input: n = 0xffff
 
    Output: 0x8000
 
 */

/// Computes a number represented by the most significant bit.
///
func numberOf(n: Int) -> Int {
    // Safe-guard against 0
    if n == 0 { return 0 }
    // Convert into unsigned number to avoid overflow
    let nn = UInt(bitPattern: n)
    // Define search range of bits, from 0 (LSB) to 63 (MSB)
    var lsb: UInt = 0, msb: UInt = 63
    // Iterate over the range until the answer is found
    while msb >= lsb {
        // Calculate head of the range
        let head = lsb + (msb - lsb) / 2
        // Calculate head's power of 2
        let x = 1 << head
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
    return 1 << Int(bitPattern: msb)
}


// Assert a few simple test cases
numberOf(n: 0b1000) == 0b1000 // true
numberOf(n: 0b1001) == 0b1000 // true
numberOf(n: 0xffff) == 0x8000 // true
numberOf(n: 0x7000) == 0x4000 // true
numberOf(n: 0x4fff) == 0x4000 // true
numberOf(n: 0x1fff) == 0x1000 // true
numberOf(n: 0x00ff) == 0x0080 // true

// Assert a few edge cases
numberOf(n: Int.max) == µ(0x4000_0000_0000_0000) // true
numberOf(n: Int.min) == µ(0x8000_0000_0000_0000) // true
numberOf(n:      -1) == µ(0x8000_0000_0000_0000) // true
numberOf(n:     0x1) == µ(0x0000_0000_0000_0001) // true
numberOf(n:     0x0) == µ(0x0000_0000_0000_0000) // true

//: [Next](@next)