//: [Previous](@previous)

/*
 
 Find 100% human-friendly explanation of this coding challenge at http://pabloduo.com/2018/07/07/
 
 Write a program that computes quotient of two positive integers X and Y. Keep in mind your code needs to meet the following constraints:
 
 - use only addition, subtraction and bitwise shift operators;
 
 
 EXAMPLE:
 
    Input: x = 12, y = 4
 
    Output: 3
 
 */


/// Divides X by Y using addition, subtraction and bitwise shift operators only. 
func divide(x: Int, y: Int) -> Int {
    // Prepare state of the algorithm

    // Since function parameters in Swift are constants,
    // we declare internal variables that we can modify

    // Iterate while X still "divisible" by Y

        // Little speed trick, find 2^k * Y, that is less or equal to X

            // Shift bits in 2^k * Y to the right, eq. divide by 2

            // Try (k - 1) power, eq. 2^k-1


        // Compute parts of the quotient, bit by bit

        // Subtract 2^k * Y from X


    // Here is the result of division

}


// Assert a few very basic use cases
divide(x: 0, y: 1) == 0 / 1
divide(x: 1, y: 1) == 1 / 1
divide(x: 6, y: 3) == 6 / 3
divide(x: 5, y: 1) == 5 / 1

// Assert a few slightly larger use cases
divide(x: 10, y: 1) == 10 / 1
divide(x: 10, y: 2) == 10 / 2
divide(x: 12, y: 4) == 12 / 4
divide(x: 14, y: 2) == 14 / 2

// Assert a few interesting use cases
divide(x: 13, y: 2) == 13 / 2
divide(x: 17, y: 2) == 17 / 2
divide(x: 19, y: 2) == 19 / 2
divide(x: 21, y: 2) == 21 / 2

// Assert a few edge use cases
divide(x: Int.max, y: 0x0000_ffff) == Int.max / 0x0000_ffff
divide(x: Int.max, y: 0x000f_ffff) == Int.max / 0x000f_ffff
divide(x: Int.max, y: 0x7fff_ffff) == Int.max / 0x7fff_ffff

//: [Next](@next)
