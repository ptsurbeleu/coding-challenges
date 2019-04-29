//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/16/
 
 Write a function to return position of the only least significant bit set in the given integer.
 
 
 EXAMPLE:
 
 Input: n = 0x40 (eq. 0b0100_0000)
 
 Output: 6
 
 
 EXAMPLE:
 
    Input: n = 0x50000 (eq. 0b0101_0000_0000_0000_0000)
 
    Output: 17
 
 */

/// Finds position of the least significant bit (recursive).
///
func position(n: Int, _ lsb: UInt = 0, _ msb: UInt = 63) -> Int {
    // TODO: Write some code to solve this coding challenge
    fatalError("TODO: Write some code to solve this challenge...")
}


// Assert recursive implementation
position(n: 0)       ?>>  0
position(n: 1)       ?>>  1
position(n: 0x40)    ?>>  7
position(n: 0x50000) ?>> 17
position(n: 1 << 27) ?>> 28
position(n: 1 << 30) ?>> 31
position(n: 1 << 31) ?>> 32
position(n: 1 << 32) ?>> 33
position(n: 1 << 35) ?>> 36
position(n: 1 << 63) ?>> 64


//: [Next](@next)
