//: [Previous](@previous)

/*
 
 Find a human-friendly explanatio of this coding challenge at http://pabloduo.com/2018/08/26/
 
 Write a function to compute X mod Y without using division (/) and modulo (%) operators, where Y is a power of 2.
 
 
 EXAMPLE:
 
    Input: x = 0b0110, y = 0b0100
 
    Output: 2
 
 */

/// Computes X mod Y, where Y is a power of 2.
///
func mod(x: Int, y: Int) -> Int {
    // Convert into unsigned integers
    let xx = UInt(bitPattern: x), yy = UInt(bitPattern: y)
    // Compute the answer
    return Int(bitPattern: xx & (yy - 1)) 
}

// Assert a few simple test cases
mod(x:    6, y:  4) ==    6 %  4 // true
mod(x:    6, y:  2) ==    6 %  2 // true
mod(x:  887, y:  8) ==  887 %  8 // true
mod(x: 1033, y: 16) == 1033 % 16 // true

// Assert a few edge cases
mod(x: Int.max, y:  1) == Int.max %  1 // true
mod(x: Int.max, y:  8) == Int.max %  8 // true
mod(x: Int.max, y: 16) == Int.max % 16 // true
mod(x: Int.max, y: 32) == Int.max % 32 // true
mod(x: Int.min, y:  1) == Int.min %  1 // true
mod(x: Int.min, y:  8) == Int.min %  8 // true
mod(x: Int.min, y: 16) == Int.min % 16 // true
mod(x: Int.min, y: 32) == Int.min % 32 // true

//: [Next](@next)
