//: [Previous](@previous)

/*
 
 Find 100% human-friendly explanation of this coding challenge at http://pabloduo.com/2018/06/26/
 
 * Lets define "the weight" of a nonnegative integer x to be the number of bits that are set to 1 in its binary representation.
 
 Given a positive integer, print the next smallest number that have the same weight. If you cannot find the answer for the given integer, return -1.
 
 
 EXAMPLE
 
    Input: num = 0b11011001111100 (13948)
 
    Output: 0b11011001111010 (13946)
 
 */ 

func nextSmallest(n: Int) -> Int {
    // Prepare state of the algorithm

    // Loop thru until we run out of bits to inspect

        // Rightmost trailing zero terminates

            // Signal to flip bits & terminate the loop


        // Swap bits only if they are different

            // An in-place bits swap

            // Move on to the next bit


        // Shift by 1 bit to the right

        // Move on to the next pair of bits


    // Flip rightmost trailing 0 with 1

    // And in some cases there is literally nothing we can do

}

// Assert a few very basic use cases
nextSmallest(n: 0b0010) == 0b0001 // (true)
nextSmallest(n: 0b0101) == 0b0011 // (true)
nextSmallest(n: 0b1001) == 0b0110 // (true)
nextSmallest(n: 0b1000) == 0b0100 // (true)

// Assert a few edge use cases
nextSmallest(n:   0)     == -1 // (true)
nextSmallest(n:  -1)     == -1 // (true)
nextSmallest(n: -11)     == -1 // (true)
nextSmallest(n: Int.min) == -1 // (true)

// Assert slightly more involved use cases
nextSmallest(n: 0b10011110000011) == 0b10011101110000 // (true)
nextSmallest(n: 0b10011110010011) == 0b10011110001110 // (true)
nextSmallest(n: 0b10011010000010) == 0b10011010000001 // (true)
nextSmallest(n: 0b10000000000001) == 0b01100000000000 // (true)
nextSmallest(n: 0b11011001111100) == 0b11011001111010 // (true)

//: [Next](@next)
