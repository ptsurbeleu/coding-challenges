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

    // Iterate over 2nd and 3rd terms

        // Query carry of 1st and 2nd terms

        // Add 1st and 2nd terms together

        // Shift carry of 1st and 2nd terms

        // Query carry of 3rd term

        // Add 3rd term to the sum

        // Shift carry of 3rd term


    // Here is the answer

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
