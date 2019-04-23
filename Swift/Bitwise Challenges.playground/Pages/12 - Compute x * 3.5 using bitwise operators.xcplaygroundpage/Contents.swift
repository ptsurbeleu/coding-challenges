//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/22/

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
    // Iterate over 2nd and 3rd terms
    while yy != 0 || zz != 0 {
        // Query carry of 1st and 2nd terms
        let cy = xx & yy
        // Add 1st and 2nd terms together
        xx ^= yy
        // Shift carry of 1st and 2nd terms
        yy = cy << 1
        // Query carry of 3rd term
        let cz = xx & zz
        // Add 3rd term to the sum
        xx ^= zz
        // Shift carry of 3rd term
        zz = cz << 1
    }
    // Here is the answer
    return xx
}

// Assert a few positive use cases
multiply(x:  0) ==  0 // true
multiply(x:  2) ==  7 // true
multiply(x:  4) == 14 // true
multiply(x:  6) == 21 // true
multiply(x:  8) == 28 // true
multiply(x: 10) == 35 // true

// Assert a few negative test cases
multiply(x:  -2) ==  -7 // true
multiply(x:  -4) == -14 // true
multiply(x:  -6) == -21 // true
multiply(x:  -8) == -28 // true
multiply(x: -10) == -35 // true

//: [Next](@next)
