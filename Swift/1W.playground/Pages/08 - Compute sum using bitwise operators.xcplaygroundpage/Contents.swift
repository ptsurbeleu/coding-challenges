//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/07/05/
 
 Write a program that computes sum of two signed integers `x` and `y`. Keep in mind your code needs to meet the following constraints:
 
 - use only bitwise operators "<<", ">>", "|", "&", "~" and "^";
 - use assignment operator "=";
 - use equality checks and "boolean" combinations;
 
 
 EXAMPLE
 
    Input: x = 999, y = 1
 
    Output: 1000
 
 */

/// Computes sum of two signed numbers using bitwise operators only.
///
func sum(x: Int, y: Int) -> Int {
    // Since function parameters in Swift are constants,
    // we declare internal variables that we can modify

    // Iterate on y while there are bits to work with

        // Compute carry of x and y, using AND, where
        // carry is a set of common bits between x and y

        // Compute sum of bits x and y, using XOR, where sum
        // is a set of bits that are different between x and y

        // Carry is shifted by 1, that is what we usually do
        // with carry, eq. move to the next position


    // Here is our sum

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
