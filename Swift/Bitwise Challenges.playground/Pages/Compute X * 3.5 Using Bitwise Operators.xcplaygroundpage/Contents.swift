//: [Previous](@previous)

/*

 Write a function to compute 3.5x using bitwise operators only.


 EXAMPLE:

    Input: x = 4

    Output: 14

 */

/// Multiplies the specified integer by 3.5.
///
func multiply(x: Int) -> Int {
    // Prepare state of the algorithm
    var xx = x << 1, yy = x, zz = x >> 1
    // Iterate over 2nd and 3rd operands
    while yy > 0 || zz > 0 {
        // Query carry of 1st and 2nd operands
        let cy = xx & yy
        // Add 1st and 2nd operands together
        xx ^= yy
        // Shift carry of 1st and 2nd operands
        yy = cy << 1
        // Query carry of 3rd operand
        let cz = xx & zz
        // Add 3rd operand to the sum
        xx ^= zz
        // Shift carry of 3rd operand
        zz = cz << 1
    }
    // Here is the answer
    return xx
}

// Assert a few use cases
multiply(x:  0) ==  0
multiply(x:  2) ==  7
multiply(x:  4) == 14
multiply(x:  6) == 21
multiply(x:  8) == 28
multiply(x: 10) == 35

//: [Next](@next)
