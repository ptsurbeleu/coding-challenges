//: [Previous](@previous)

/*
 
 Write a function that returns XOR of two numbers after aligning these numbers by their MSBs (most significant bits) eq. by adding trailing zeros to the binary representation of the  smaller number.
 
 
 EXAMPLE:
 
    Input: n = 0b1010_0000, m = 0b0000_1100
 
    Output: 0b0110_0000
 
 */


func xor(n: Int, m: Int) -> Int {
    // Prepare state of the algorithm

    // Loop and align binary representation

        // Shift to the right + one more trailing zero


    // Here is the answer

}


// Assert a few test cases
xor(n: 0b1010_0000, m: 0b0000_1100) == 0b0110_0000
xor(n: 0b1010_0000, m: 0b0000_0000) == 0b1010_0000
xor(n: 0xf000_0000, m: 0x0001_0000) == 0x7000_0000
xor(n: 0xff00_0000, m: 0x0000_000f) == 0x0f00_0000
xor(n: 0x7000_0000, m: 0x0000_000f) == 0x0800_0000
xor(n: 0x0001_0000, m: 0x4000_0000) == 0x0000_0000
xor(n: 0x0000_0000, m: 0x0000_0000) == 0x0000_0000
xor(n: 0xffff_0000, m: 0x0000_ffff) == 0x0000_0000

//: [Next](@next)
