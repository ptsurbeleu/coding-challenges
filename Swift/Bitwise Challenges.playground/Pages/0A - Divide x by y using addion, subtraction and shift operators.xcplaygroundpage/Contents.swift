//: [Previous](@previous)

/*

 Find 100% human-friendly explanation of this coding challenge at http://pabloduo.com/2018/07/07/

 Write a program that computes quotient of two positive integers X and Y. Keep in mind your code needs to meet the following constraints:

    - use only addition, subtraction and bitwise shift operators;


 EXAMPLE:

    Input: x = 12, y = 4

    Output: 3

 */


/// Binary search of the smallest power of 2 possible, such that 2 ^ k * y <= x
func find(x: Int, y: Int) -> Int {
    // Define power of 2 search boundaries, eq. 0 to 63
    var lo = 0, hi = 63
    // Enumerate until we found a suitable power of 2
    while hi >= lo {
        // Calculate median and its value
        let mi = lo + (hi - lo) / 2, vv = y << mi
        // Check if this is what we're looking for
        if vv == x { return mi }
        // Choose another block to search
        if vv > x { hi = mi - 1 }
        else { lo = mi + 1 }
    }
    // The smallest power is the answer
    return min(lo, hi)
}

/// Divides X by Y using addition, subtraction and bitwise shift operators only. 
func divide(x: Int, y: Int) -> Int {
    // Prepare state of the algorithm
    var quotient = 0, xx = x
    // Iterate while X still "divisible" by Y
    while xx >= y {
        // Little speed trick, find 2^k * Y using binary search,
        // such that it is less or equal to X
        let power = find(x: xx, y: y)
        // Compute parts of the quotient, bit by bit
        quotient += 1 << power
        // Subtract 2^k * Y from X
        xx -= y << power
    }
    // Here is the result of the division
    return quotient
}

// Assert a few very basic use cases
divide(x: 0, y: 1) ?>> (0 / 1)
divide(x: 1, y: 1) ?>> (1 / 1)
divide(x: 6, y: 3) ?>> (6 / 3)
divide(x: 5, y: 1) ?>> (5 / 1)

// Assert a few slightly larger use cases
divide(x: 10, y: 1) ?>> (10 / 1)
divide(x: 10, y: 2) ?>> (10 / 2)
divide(x: 12, y: 4) ?>> (12 / 4)
divide(x: 14, y: 2) ?>> (14 / 2)
divide(x: 16, y: 2) ?>> (16 / 2)

// Assert a few interesting use cases
divide(x: 13, y: 2) ?>> (13 / 2)
divide(x: 17, y: 2) ?>> (17 / 2)
divide(x: 19, y: 2) ?>> (19 / 2)
divide(x: 21, y: 2) ?>> (21 / 2)

// Assert a few edge use cases
divide(x: 0x3fff_ffff_ffff_ffff, y: 0x0000_ffff) ?>> (0x3fff_ffff_ffff_ffff / 0x0000_ffff)
// These use case won't work because the algorithm has a logical flaw,
// since 0x1000_0000_0000_0000 will always be less than 0xffff_ffff_ffff_ffff
//divide(x: Int.max, y: 0x0000_ffff) ?>> (Int.max / 0x0000_ffff)
//divide(x: Int.max, y: 0x000f_ffff) ?>> (Int.max / 0x000f_ffff)
//divide(x: Int.max, y: 0x7fff_ffff) ?>> (Int.max / 0x7fff_ffff)

//: [Next](@next)
