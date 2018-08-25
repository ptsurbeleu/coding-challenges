//: [Previous](@previous)

/*
 
 Write a function to compute 2's complement of a given number. Keep in mind your code needs to meet the following constraints:
 
    - use only bitwise operators "<<", ">>", "|", "&", "~" and "^";
    - use assignment operator "=";
    - use equality checks and "boolean" combinations;


 EXAMPLE:
 
    Input: x = 0xffff
 
    Output: -0xffff

 */

func twc(x: Int) -> Int {
    // Safe-guard against 0
    if x == 0x0 { return x }
    // Prepare state of the algorithm
    var query = 0x1, mask = µ(0xffff_ffff_ffff_fffe)
    // Query until the first bit set is found
    while x & query == 0 {
        // Move query to the next bit
        query <<= 1
        // Shift bit mask since current bit is off
        mask <<= 1
    }
    // Here is the answer
    return x ^ mask
}

// Assert a few test cases
twc(x: 0x0000)  ==  0x0000  // true
twc(x: 0x0001)  == -0x0001  // true
twc(x: 0x0007)  == -0x0007  // true
twc(x: 0x0010)  == -0x0010  // true
twc(x: 0x00a0)  == -0x00a0  // true
twc(x: 0x0eee)  == -0x0eee  // true
twc(x: 0x8000)  == -0x8000  // true
twc(x: 0xffff)  == -0xffff  // true
twc(x: Int.max) == -Int.max // true


//: [Next](@next)
