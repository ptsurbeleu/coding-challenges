//: [Previous](@previous)

/*
 
 Write a function to find XOR of 0s and 1s counts in the given number.
 
 
 EXAMPLE:
 
    Input: x = 0x0000_0000_0000_00fe
 
    Output: 6
 
 
 EXAMPLE:
 
    Input: x = 0x1000_0000_0000_0000
 
    Output: 61

 */


func xor(x: Int) -> Int {
    // Prepare state of the algorithm
    var zeroes = 0, ones = 0, xx = UInt(bitPattern: x)
    // Loop while there bits to work with
    while xx != 0 {
        // Test the least significant bit (aka. LSB)
        if xx & 1 == 1 {
            // That was 1
            ones += 1
        } else {
            // That was 0
            zeroes += 1
        }
        // Move on to the next bit
        xx >>= 1
    }
    // Here is our answer
    return zeroes ^ ones
}

// Assert a few test cases
xor(x: µ(0x0000_0000_0000_00fe)) ==  7 ^  1 //  7 (1s) ^  1 (0s)
xor(x: µ(0x1000_0000_0000_0000)) ==  1 ^ 60 //  1 (1s) ^ 60 (0s)
xor(x: µ(0xffff_ffff_0000_0000)) == 32 ^ 32 // 32 (1s) ^ 32 (0s)
xor(x: µ(0xffff_ffff_8000_0000)) == 33 ^ 31 // 33 (1s) ^ 31 (0s)


//: [Next](@next)
