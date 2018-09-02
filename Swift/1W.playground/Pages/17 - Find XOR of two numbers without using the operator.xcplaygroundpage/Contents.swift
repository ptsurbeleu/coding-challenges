//: [Previous](@previous)

/*
 
 Write a function that returns eXclusive OR of two integers without using the actual XOR(^) operator.
 
 
 EXAMPLE:
 
    Input: x = 0x000f, y = 0x000f
 
    Output: 0x0000
 
 
 EXAMPLE:
 
    Input: x = 0xf000, y = 0x000f
 
    Output: 0xf00f
 
 */

func xor(lhs: Int, rhs: Int) -> Int {
    // Collect 0s and 1s distinct between numbers
    // eq. 1 ^ 0 = 1 and 0 ^ 0 = 0

    // Collect 1s to become 0s between numbers
    // eq. 1 ^ 1 = 0

    // Clear duplicate 1s and that is the answer

}


// Assert a few test cases
xor(lhs: 0x000f, rhs: 0x000f) == 0x0000
xor(lhs: 0xf000, rhs: 0x000f) == 0xf00f
xor(lhs: 0b1010, rhs: 0b0101) == 0b1111
xor(lhs: 0b1100, rhs: 0b0100) == 0b1000
xor(lhs: 0b1011, rhs: 0b0110) == 0b1101
xor(lhs: 0b0000, rhs: 0b0000) == 0b0000
xor(lhs: 0b1111, rhs: 0b1111) == 0b0000

//: [Next](@next)
