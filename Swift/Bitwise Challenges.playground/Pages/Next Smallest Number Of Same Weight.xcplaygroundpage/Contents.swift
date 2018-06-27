//: [Previous](@previous)

/*
 
 Find 100% human-friendly explanation of this coding challenge at http://pabloduo.com/2018/06/26/next-number-with-same-weight.
 
 * Lets define "the weight" of a nonnegative integer x to be the number of bits that are set to 1 in its binary representation.
 
 Given a positive integer, print the next smallest number that have the same weight. If you cannot find the answer for the given integer, return -1.
 
 
 EXAMPLE
 
 Input: num = 0b11011001111100 (13948)
 
 Output: smallest = 0b11011001111010 (13946)
 
 */

func nextSmallest(num: Int) -> Int {
    // Prepare state
    var _sample = num, _num = num, x = 0, y = 1, i = 0, flip = false
    // Loop thru until we run out of bits to inspect
    while _sample > 0 {
        // Rightmost trailing zero terminates
        if biton(_sample, 1) && bitoff(_sample, 0) {
            // Signal to flip bits & terminate the loop
            flip = true; break;
        }
        // Swap bits only if they are different
        if bit(_num, x) != bit(_num, i) {
            // An in-place bits swap
            _num ^= 1 << x | 1 << i
            // Move on to the next bit
            i += 1
        }
        // Shift by 1 bit to the right
        _sample >>= 1
        // Move on to the next pair of bits
        x += 1; y += 1;
    }
    // Flip rightmost trailing 0 with 1
    if flip { return _num ^ (1 << y | 1 << x) }
    // And in some cases there is literally nothing we can do
    return -1
}

// Assert a few very basic use cases
nextSmallest(num: 0b0010) == 0b0001 // (true)
nextSmallest(num: 0b0101) == 0b0011 // (true)
nextSmallest(num: 0b1001) == 0b0110 // (true)
nextSmallest(num: 0b1000) == 0b0100 // (true)

// Assert a few edge use cases
nextSmallest(num:   0)     == -1 // (true)
nextSmallest(num:  -1)     == -1 // (true)
nextSmallest(num: -11)     == -1 // (true)
nextSmallest(num: Int.min) == -1 // (true)

// Assert slightly more involved use cases
nextSmallest(num: 0b10011110000011) == 0b10011101110000 // (true)
nextSmallest(num: 0b10011110010011) == 0b10011110001110 // (true)
nextSmallest(num: 0b10011010000010) == 0b10011010000001 // (true)
nextSmallest(num: 0b10000000000001) == 0b01100000000000 // (true)
nextSmallest(num: 0b11011001111100) == 0b11011001111010 // (true)

//: [Next](@next)
