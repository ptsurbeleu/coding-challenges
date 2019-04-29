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
    // TODO: Write some code to solve this coding challenge
    fatalError("TODO: Write some code to solve this challenge...")
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
