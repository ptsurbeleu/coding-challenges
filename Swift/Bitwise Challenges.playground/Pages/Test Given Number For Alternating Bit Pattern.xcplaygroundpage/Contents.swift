//: [Previous](@previous)

/*
 
 Write a function to test whether a given number has bits in alternating pattern, eq. 0101_0101 or 1010_1010. The function should return `true` if the pattern is alternating and `false` otherwise.
 
 
 EXAMPLE:
 
    Input: x = 0b1010_1010
 
    Output: true
 
 
 EXAMPLE:
 
    Input: x = 0b1100_1010
 
    Output: false
 
 */

func pattern(x: Int) -> Bool {
    // Prepare the state of the algorithm
    let even = 0b1010, odd = 0b0101, nibble = 0b1111
    // Choose a pattern to match with
    let pattern = x & even != 0 ? even : odd
    // Get ready our poor man's state machine
    var offset = 0, match = false
    // Verify offset is within the boundaries 
    while x >> offset != 0 {
        // Query bits in the nibble referenced by offset
        let bits = (x >> offset) & nibble 
        // Attempt for an exact bit pattern match
        match = (bits ^ pattern) == 0
        // Mismatch immediately terminates the loop
        if match == false { break }
        // Advance offset to match the next nibble
        offset += 4
    }
    // Here is the answer, eq. yes or no
    return match
}

// Assert a few test cases
pattern(x: 0xaaaa) == true
pattern(x: 0x5555) == true
pattern(x: 0x0055) == true
pattern(x: 0x00aa) == true
pattern(x: 0x0000) == false
pattern(x: 0x0001) == false
pattern(x: 0xaaae) == false

//: [Next](@next)
