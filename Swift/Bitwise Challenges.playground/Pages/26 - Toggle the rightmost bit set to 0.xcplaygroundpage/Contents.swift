//: [Previous](@previous)

/*
 
 Write a function to toggle the rightmost 0 in the binary represenation of a given integer. Keep in mind your code needs to meet the following constraints:
 
    - when n is 0, your function returns 1;
    - when n has all bits set (eq. 7), your function returns n;
    - your function should work with negative numbers as well; 
 
 
 EXAMPLE:

    Input: n = 0b0011_1001
 
    Output: 0b0011_1011
 
 */

func toggle(n: Int) -> Int {
    // Prepare state of the algorithm
    var query = 0x1, mask = 0x1
    // Query every bit until the first 0 is found 
    while n & query != 0 {
        // Special case of numbers with all bits set
        if mask & n == n { break }
        // Move query to the next bit
        query <<= 1
        // Append one more bit to the mask
        mask = (mask << 1) | 1
    }
    // Combine mask and number to get the answer 
    return n | mask
}

// Assert a few test cases with positive numbers
toggle(n: 0b0000_0001) == 0b0000_0001
toggle(n: 0b0000_0000) == 0b0000_0001
toggle(n: 0b0000_0111) == 0b0000_0111
toggle(n: 0b0000_1111) == 0b0000_1111
toggle(n: 0b0011_1001) == 0b0011_1011

// Assert a few test cases with negative numbers
toggle(n: fffx(0b1100)) == fffx(0b1101)
toggle(n: fffx(0b1001)) == fffx(0b1011)
toggle(n: fffx(0b0111)) == fffx(0b1111)
toggle(n: fffx(0b1101)) == fffx(0b1111)

//: [Next](@next)
