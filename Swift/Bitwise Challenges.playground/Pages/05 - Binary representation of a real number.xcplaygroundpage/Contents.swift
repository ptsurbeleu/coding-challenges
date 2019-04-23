//: [Previous](@previous)

/*
 
 Find a human-friendly explanation into this coding challenge at http://pabloduo.com/2018/06/10/
 
 Given a real number between 0 and 1 (e.g., 0.625) that is passed in as a float, write a program that returns its binary representation.

 
 EXAMPLE
 
    Input:  n = 0.625
 
    Output: "10100000000000000000000"
 
 */

func toBinary(num: Float32) -> String {
    // Prepare our state and define precision
    var binary: String = "", fractional = num, precision = 23
    // Loop thru the number's bits and keep precision in check
    while precision > 0 {
        // Assemble the binary representation with 2x trick
        fractional = fractional * 2.0
        // Do we have leading bit set to 1?
        let bitOn = fractional >= 1.0
        // This is how our trick translates into 0s and 1s
        binary += bitOn ? "1" : "0"
        // Leave out already processed bit
        fractional -= bitOn ? 1.0 : 0.0
        // Move on to the next bit
        precision -= 1
    }
    // Here is the binary representation
    return binary
}

// Assert a few test cases
toBinary(num: 0.625) ?>> "10100000000000000000000"
toBinary(num: 0.6)   ?>> "10011001100110011001101"
toBinary(num: 0.541) ?>> "10001010011111101111101"
toBinary(num: 0.5)   ?>> "10000000000000000000000"

//: [Next](@next)
