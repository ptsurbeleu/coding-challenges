//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/06/29/
 
 Given two integers X and Y, write a function to find out a number of bits required to convert one integer to the other.
 
 EXAMPLE
 
    Input: X = 0b1000; Y = 0b0011;
 
    Output: 3
 
 */

func bitsToConvert(x: UInt, y: UInt) -> Int {
    // Prepare state
 
    // Loop thru diff until it runs out of bits
    while false {
        // Plus one more bit that is different

        // Flip the next least-significant bit

    }
    // This is how many bits are required (eq. different) to convert x to y
    return 0
}

// Assert a few simple cases
bitsToConvert(x: 0b0000, y: 0b0000) == 0
bitsToConvert(x: 0b0001, y: 0b0000) == 1
bitsToConvert(x: 0b0011, y: 0b0001) == 1
bitsToConvert(x: 0b0010, y: 0b0001) == 2

// Assert original case
bitsToConvert(x: 0b1000, y: 0b0011) == 3

// Assert a few edge cases using hexadecimal notation
bitsToConvert(x: 0xffff_ffff_ffff_ffff, y: 0xffff_ffff_ffff_ffff) == 0
bitsToConvert(x: 0xffff_ffff_ffff_ffff, y: 0xffff_ffff_ffff_fffe) == 1
bitsToConvert(x: 0xffff_ffff_ffff_ffff, y: 0xffff_ffff_ffff_fff0) == 4
bitsToConvert(x: 0xffff_ffff_ffff_ffff, y: 0x0000_0000_0000_0000) == 64
bitsToConvert(x: 0xffff_ffff_ffff_ffff, y: 0x0000_0000_0000_0001) == 63

//: [Next](@next)
