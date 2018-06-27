//: [Previous](@previous)

/*
 
 Find 100% human-friendly explanation of this coding challenge at http://pabloduo.com/2018/06/27/next-number-with-same-weight
 
 * Lets define "the weight" of a nonnegative integer x to be the number of bits that are set to 1 in its binary representation.
 
 Given a positive integer, print the next largest number that have the same weight. If you cannot find the answer for the given integer, return -1.
 
 
 EXAMPLE
 
 Input: num = 0b11011001111100 (13948)
 
 Output: largest = 0b11011010001111 (13967)
 
 */

func nextLargest(num: Int) -> Int {
    // Prepare state
    var x = 0, y = 1, i = 0, _sample = num, _next = num, flip = false
    // Loop thru until we run out of bits to inspect
    while _sample > 0 {
        // Rightmost non-trailing zero terminates
        if bitoff(_sample, 1) && biton(_sample, 0) {
            // Signal to flip bits & terminate the loop
            flip = true; break;
        }
        // Swap bits only if they are different
        if bit(_next, x) != bit(_next, i) {
            // Swap bits in-place
            _next ^= 1 << x | 1 << i
            // Move on to the next bit
            i += 1
        }
        // Shift by 1 bit to the right
        _sample >>= 1
        // Move on to the next pair of bits
        x += 1; y += 1;
    }
    // Flip rightmost non-trailing 0 with 1
    if flip { return _next ^ (1 << y | 1 << x) }
    // And in some cases there is literally nothing we can do
    return -1
}

// Assert a few very basic cases with a single bit
nextLargest(num: 0b0001) == 0b0010 // (true)
nextLargest(num: 0b0010) == 0b0100 // (true)
nextLargest(num: 0b0100) == 0b1000 // (true)

// Assert a few basic cases with multiple bits
nextLargest(num: 0b0011) == 0b0101 // (true)
nextLargest(num: 0b0101) == 0b0110 // (true)
nextLargest(num: 0b0110) == 0b1001 // (true)
nextLargest(num: 0b0111) == 0b1011 // (true)
nextLargest(num: 0b1011) == 0b1101 // (true)

// Assert a few edge cases
nextLargest(num:   0) == -1 // (true)
nextLargest(num:  -1) == -1 // (true)
nextLargest(num: -11) == -1 // (true)

// Assert a few slightly more involved cases
nextLargest(num: 0b11011001111100) == 0b11011010001111 // (true)
nextLargest(num: 0b11011001100100) == 0b11011001101000 // (true)
nextLargest(num: 0b11011100000000) == 0b11100000000011 // (true)
nextLargest(num: 0b11011000000000) == 0b11100000000001 // (true)


//: [Next](@next)
