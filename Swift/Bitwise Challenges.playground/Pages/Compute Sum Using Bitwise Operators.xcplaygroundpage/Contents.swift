//: [Previous](@previous)

/*

 Find 100% human-friendly explanation of this coding challenge at http://pabloduo.com/2018/07/05/

 Write a program that computes sum of two signed integers X and Y. Keep in mind your code needs to meet the following constraints:

    - use only bitwise operators "<<", ">>", "|", "&", "~" and "^";
    - use assignment operator "=";
    - use equality checks and "boolean" combinations;


 EXAMPLE

    Input: X = 999, Y = 1

    Output: 1000

 */

/// Computes sum of two signed numbers using bitwise operators only.
func sum(x: Int, y: Int) -> Int {
    // Since function parameters in Swift are constants,
    // we declare internal variables that we can modify
    var xx = x, yy = y
    // Iterate on Y while there are bits to work with
    while yy != 0 {
        // Compute carry of X and Y, using AND, where
        // carry is a set of common bits between X and Y
        let carry = xx & yy
        // Compute sum of bits X and Y, using XOR, where sum
        // is a set of bits that are different between X and Y
        xx = xx ^ yy
        // Carry is shifted by 1, that is what we usually do
        // with carry, eq. move to the next position
        yy = carry << 1
    }
    // Here is our sum
    return xx
}

// Assert a few basic use cases
sum(x: 0, y: 0)    ==    0
sum(x: 0, y: 1)    ==    1
sum(x: 4, y: 2)    ==    6
sum(x: 0, y: -1)   ==   -1
sum(x: 1, y: -1)   ==    0

// Assert slightly bigger numbers
sum(x: 100, y: 4)  ==  104
sum(x: 999, y: 1)  == 1000
sum(x: 999, y: -1) ==  998

// Assert a few edge cases
sum(x: Int.max, y: 1)  == Int.min
sum(x: Int.min, y: -1) == Int.max

//: [Next](@next)
