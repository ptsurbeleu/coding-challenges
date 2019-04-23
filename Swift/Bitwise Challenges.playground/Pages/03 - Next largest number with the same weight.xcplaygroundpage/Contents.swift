//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/06/27/
 
 * Lets define "the weight" of a nonnegative integer x to be the number of bits that are set to 1 in its binary representation.
 
 Given a positive integer, print the next largest number that have the same weight. If you cannot find the answer for the given integer, return -1.
 
 
 EXAMPLE
 
    Input: num = 0b11_0110_0111_1100 (13948)
 
    Output:      0b11_0110_1000_1111 (13967)
                           ^^^^ ^^^^
 */

func nextLargest(n: Int) -> Int {
    // Prepare state of the algorithm
    var query = n, x = 0, y = 1, i = 0, nn = n, flip = false
    // Loop thru until we run out of bits to inspect
    while query > 0 {
        // Rightmost non-trailing zero terminates
        if bitoff(query, 1) && biton(query, 0) {
            // Signal to flip bits & terminate the loop
            flip = true; break;
        }
        // Swap bits only if they are different
        if bit(nn, x) != bit(nn, i) {
            // Swap bits in-place
            nn ^= 1 << x | 1 << i
            // Move on to the next bit
            i += 1
        }
        // Shift by 1 bit to the right
        query >>= 1
        // Move on to the next pair of bits
        x += 1; y += 1;
    }
    // Flip rightmost non-trailing 0 with 1
    if flip { return nn ^ (1 << y | 1 << x) }
    // And in some cases there is literally nothing we can do
    return -1
}

// Assert a few very basic cases with a single bit
nextLargest(n: 0b0001) ?>> 0b0010
nextLargest(n: 0b0010) ?>> 0b0100
nextLargest(n: 0b0100) ?>> 0b1000

// Assert a few basic cases with multiple bits
nextLargest(n: 0b0011) ?>> 0b0101
nextLargest(n: 0b0101) ?>> 0b0110
nextLargest(n: 0b0110) ?>> 0b1001
nextLargest(n: 0b0111) ?>> 0b1011
nextLargest(n: 0b1011) ?>> 0b1101

// Assert a few edge cases
nextLargest(n:   0) == -1
nextLargest(n:  -1) == -1
nextLargest(n: -11) == -1

// Assert a few slightly more involved cases
nextLargest(n: 0b11_0110_0111_1100) == 0b11_0110_1000_1111
nextLargest(n: 0b11_0110_0110_0100) == 0b11_0110_0110_1000
nextLargest(n: 0b11_0111_0000_0000) == 0b11_1000_0000_0011
nextLargest(n: 0b11_0110_0000_0000) == 0b11_1000_0000_0001


//: [Next](@next)
