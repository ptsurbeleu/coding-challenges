//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/15/
 
 Write a function to return position of the only least significant bit set in the given integer.
 
 
 EXAMPLE:
 
    Input: n = 0x40 (eq. 0b0100_0000)
 
    Output: 7
 
 
 EXAMPLE:
 
    Input: n = 0x50000 (eq. 0b0101_0000_0000_0000_0000)
 
    Output: 17
 
 */

/// Finds position of the least significant bit (iterative).
///
func position(n: Int) -> Int {
    // Safe-guard against 0

    // Extract only the least significant bit

    // Define search range of bits, from 0 (LSB) to 63 (MSB)

    // Define head of the search and its value

    // Iterate over the range until the answer is found

        // Calculate head of the range

        // Calculate head's power of 2

        // Adjust search range from either MSB or LSB side

            // Update search range and adjust MSB

            // Proceed to the next search round


        // Update search range and adjust LSB


    // Here is our answer

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
