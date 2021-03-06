//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/07/06/
 
 Write a program that multiplies two signed integers X and Y. Keep in mind your code needs to meet the following constraints:
 
 - use only bitwise operators "<<", ">>", "|", "&", "~" and "^";
 - use assignment operator "=";
 - use equality checks and "boolean" combinations;
 
 EXAMPLE
 
    Input: x = 3, y = 4
 
    Output: 12
 
 */


/// Multiplies two signed numbers using bitwise operators only.
///
func multiply(x: Int, y: Int) -> Int {
    // TODO: Write some code to solve this coding challenge
    fatalError("TODO: Write some code to solve this challenge...")
}


// Assert a few basic cases (positive range)
multiply(x: 0, y: 0) ?>> 0b0000 // (0)
multiply(x: 1, y: 0) ?>> 0b0000 // (0)
multiply(x: 0, y: 1) ?>> 0b0000 // (0)
multiply(x: 3, y: 3) ?>> 0b1001 // (9)
multiply(x: 3, y: 4) ?>> 0b1100 // (12)

// Assert a few basic cases (negative range)
multiply(x: -1, y: -1) ?>> 0b0001 // (1)
multiply(x: -1, y:  0) ?>> 0b0000 // (0)
multiply(x:  0, y: -1) ?>> 0b0000 // (0)
multiply(x: -3, y: -1) ?>> 0b0011 // (3)
multiply(x: -3, y: -3) ?>> 0b1001 // (9)

// Assert a few basic cases (negative + positive range)
multiply(x: -1, y: 2) ?>> µ(0xffff_ffff_ffff_fffe) // (-2)
multiply(x: -2, y: 8) ?>> µ(0xffff_ffff_ffff_fff0) // (-16)
multiply(x: -3, y: 3) ?>> µ(0xffff_ffff_ffff_fff7) // (-9)
multiply(x: -3, y: 4) ?>> µ(0xffff_ffff_ffff_fff4) // (-12)


//: [Next](@next)
