//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2017/08/21
 
 Write a function to compute parity of a 64-bit word, where parity of a binary word is `1` if the number of 1s in the word is odd and `0` otherwise (eq. when number of 1s is even).
 
 
 EXAMPLE:
 
    Input: x = 1011
 
    Output: 1
 
 
 EXAMPLE:
 
    Input: x = 1100
 
    Output: 0
 
 */

func parity(x: Int) -> Int {
    // Overflow should not be a problem here
    var result = 0, word = x
    // Loop until we processed all bits
    while word != 0 {
        // + 0 or + 1, since 1 & 1 = 1 and 0 & 1 = 0
        result += (word & 1)
        // Shift to the left by a single bit
        word >>= 1
    }
    // Odd or even?
    return result % 2
}


// Assert a few test cases
parity(x: 0b0000) == 0 // true
parity(x: 0b1011) == 1 // true
parity(x: 0b1100) == 0 // true

//: [Next](@next)
