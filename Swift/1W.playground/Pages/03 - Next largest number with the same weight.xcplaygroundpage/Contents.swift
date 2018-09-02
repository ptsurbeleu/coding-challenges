//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/06/27/
 
 * Lets define "the weight" of a nonnegative integer x to be the number of bits that are set to 1 in its binary representation.
 
 Given a positive integer, print the next largest number that have the same weight. If you cannot find the answer for the given integer, return -1.
 
 
 EXAMPLE
 
 Input: num = 0b11011001111100 (13948)
 
 Output: 0b11011010001111 (13967)
 
 */

func nextLargest(n: Int) -> Int {
    // Prepare state of the algorithm

    // Loop thru until we run out of bits to inspect

        // Rightmost non-trailing zero terminates

            // Signal to flip bits & terminate the loop


        // Swap bits only if they are different

            // Swap bits in-place

            // Move on to the next bit


        // Shift by 1 bit to the right

        // Move on to the next pair of bits


    // Flip rightmost non-trailing 0 with 1

    // And in some cases there is literally nothing we can do

}


// Assert a few very basic cases with a single bit
nextLargest(n: 0b0001) == 0b0010 // (true)
nextLargest(n: 0b0010) == 0b0100 // (true)
nextLargest(n: 0b0100) == 0b1000 // (true)

// Assert a few basic cases with multiple bits
nextLargest(n: 0b0011) == 0b0101 // (true)
nextLargest(n: 0b0101) == 0b0110 // (true)
nextLargest(n: 0b0110) == 0b1001 // (true)
nextLargest(n: 0b0111) == 0b1011 // (true)
nextLargest(n: 0b1011) == 0b1101 // (true)

// Assert a few edge cases
nextLargest(n:   0) == -1 // (true)
nextLargest(n:  -1) == -1 // (true)
nextLargest(n: -11) == -1 // (true)

// Assert a few slightly more involved cases
nextLargest(n: 0b11011001111100) == 0b11011010001111 // (true)
nextLargest(n: 0b11011001100100) == 0b11011001101000 // (true)
nextLargest(n: 0b11011100000000) == 0b11100000000011 // (true)
nextLargest(n: 0b11011000000000) == 0b11100000000001 // (true)

//: [Next](@next)