//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/06/26/
 
 * Lets define "the weight" of a nonnegative integer x to be the number of bits that are set to 1 in its binary representation.
 
 Given a positive integer, print the next smallest number that have the same weight. If you cannot find the answer for the given integer, return -1.
 
 
 EXAMPLE
 
    Input: num = 0b11_0110_0111_1100 (13948)
 
    Output:      0b11_0110_0111_1010 (13946)
                                ^^^
 */

func nextSmallest(n: Int) -> Int {
    // Prepare state of the algorithm
    var query = n, nn = n, y = 1, x = 0, i = 0, flip = false
    // Loop thru until we run out of bits to inspect
    while query > 0 {
        // Rightmost trailing zero terminates
        if biton(query, 1) && bitoff(query, 0) {
            // Signal to flip bits & terminate the loop
            flip = true; break;
        }
        // Swap bits only if they are different
        if bit(nn, x) != bit(nn, i) {
            // An in-place bits swap
            nn ^= 1 << x | 1 << i
            // Move on to the next bit
            i += 1
        }
        // Shift by 1 bit to the right
        query >>= 1
        // Move on to the next pair of bits
        x += 1; y += 1;
    }
    // Flip rightmost trailing 0 with 1
    if flip { return nn ^ (1 << y | 1 << x) }
    // And in some cases there is literally nothing we can do
    return -1
}

// Assert a few very basic use cases
nextSmallest(n: 0b0010) ?>> 0b0001
nextSmallest(n: 0b0101) ?>> 0b0011
nextSmallest(n: 0b1001) ?>> 0b0110
nextSmallest(n: 0b1000) ?>> 0b0100

// Assert a few edge use cases
nextSmallest(n:   0)     ?>> -1
nextSmallest(n:   1)     ?>> -1
nextSmallest(n:   7)     ?>> -1
nextSmallest(n:  -1)     ?>> -1
nextSmallest(n: -11)     ?>> -1
nextSmallest(n: Int.min) ?>> -1

// Assert slightly more involved use cases
nextSmallest(n: 0b10011110000011) ?>> 0b10011101110000
nextSmallest(n: 0b10011110010011) ?>> 0b10011110001110
nextSmallest(n: 0b10011010000010) ?>> 0b10011010000001
nextSmallest(n: 0b10000000000001) ?>> 0b01100000000000
nextSmallest(n: 0b11011001111100) ?>> 0b11011001111010

//: [Next](@next)
