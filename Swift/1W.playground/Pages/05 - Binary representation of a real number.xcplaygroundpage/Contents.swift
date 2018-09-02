//: [Previous](@previous)

/*
 
 Find a human-friendly explanation into this coding challenge at http://pabloduo.com/2018/06/10/print-bits-of-real-number
 
 Given a real number between 0 and 1 (e.g., 0.625) that is passed in as a float, write a program that returns its binary representation.
 
 
 EXAMPLE
 
    Input:  n = 0.625
 
    Output: "10100000000000000000000"
 
 */

func toBinary(num: Float32) -> String {
    // Prepare our state and define precision

    // Loop thru the number's bits and keep precision in check

        // Assemble the binary representation with 2x trick

        // Do we have leading bit set to 1?

        // This is how our trick translates into 0s and 1s

        // Leave out already processed bit

        // Move on to the next bit


    // Here is the binary representation

}


// Assert a few test cases
toBinary(num: 0.625) == "10100000000000000000000" // true
toBinary(num: 0.6)   == "10011001100110011001101" // true
toBinary(num: 0.541) == "10001010011111101111101" // true
toBinary(num: 0.5)   == "10000000000000000000000" // true

//: [Next](@next)