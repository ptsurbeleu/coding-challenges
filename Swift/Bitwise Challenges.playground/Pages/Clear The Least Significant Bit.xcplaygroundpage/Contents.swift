//: [Previous](@previous)

/*
 
 Find a human-friendly explanatio of this coding challenge at http://pabloduo.com/2018/08/25/

 Write a function to clear the least significant bit in the specified number.
 
 
 EXAMPLE:
 
    Input: x = 0b1100
 
    Output: 0b1000
 
 */

/// Clears the least significant bit (LSB).
///
func clear(x: Int) -> Int {
    // Convert into unsigned integer to work with bits
    let xx = UInt(bitPattern: x)
    // Here is the answer
    return Int(bitPattern: xx & (xx - 1))
}

// Assert
clear(x:  0b1100) == 0x8
clear(x: 1 << 63) == 0x0
clear(x: 1 <<  0) == 0x0
clear(x: 3 <<  0) == 0x2
clear(x: 3 << 62) == Int.min
clear(x: 1 << 34) == 0x0

//: [Next](@next)
