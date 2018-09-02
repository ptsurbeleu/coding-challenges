//: [Previous](@previous)

/*
 
 Find 100% human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/03
 
 Write a function that takes a double X and an integer Y and computes X to the power of Y. Keep in mind your code needs to meet the following constraints:
 
    - use mathematical (+, -, * and etc.) and bitwise operators;
 
 
 EXAMPLE:
 
    Input: x = 4.0, y = 2
 
    Output: 16.0
 
 */

// * * *  

func exp(x: Double, y: Int) -> Double {
    // Prepare state of the algorithm

    // Calculate X's exponent while there are bits to work with

        // Append to the final result only when exponent's LSB is 1

            // Append accumulated intermediate value


        // Exploit properties of exponentiation and use less
        // multiplications - eq. memoize and reuse intermediate results

        // Shift to the right by 1, since current bit
        // has been already processed


    // Here is the final result

}


// Assert a few simple cases (including the original one)
exp(x: 0.0, y: 0) == 1.0
exp(x: 0.0, y: 1) == 0.0
exp(x: 2.0, y: 0) == 1.0
exp(x: 2.0, y: 1) == 2.0
exp(x: 2.0, y: 2) == 4.0
exp(x: 2.0, y: 3) == 8.0
exp(x: 4.0, y: 2) == 16.0

//: [Next](@next)
