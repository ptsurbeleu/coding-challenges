//: [Previous](@previous)

/*
 
 Find 100% human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/11/
 
 Write a function that returns true if the specified number is a power of 4 and false otherwise.
 
 
 EXAMPLE:
 
    Input: num = 64
 
    Output: true
 
 
 EXAMPLE:
 
    Input: num = 32
 
    Output: false
 
 */ 

func pow4(num: Int) -> Bool {
    // Prepare state of the algorithm

    // Safe-guard from an edge case

    // Safe-guard from numbers with more than 1 bit

    // Apply bit mask and verify pattern match

}


// Assert a few invalid use cases
pow4(num:      8) == false
pow4(num:     12) == false
pow4(num:    999) == false
pow4(num: 999999) == false

// Assert all valid and size of Int compatible use cases
pow4(num:       1) == true
pow4(num: 4 <<  0) == true
pow4(num: 4 <<  2) == true
pow4(num: 4 <<  4) == true
pow4(num: 4 <<  6) == true
pow4(num: 4 <<  8) == true
pow4(num: 4 << 10) == true
pow4(num: 4 << 12) == true
pow4(num: 4 << 14) == true
pow4(num: 4 << 16) == true
pow4(num: 4 << 18) == true
pow4(num: 4 << 20) == true
pow4(num: 4 << 22) == true
pow4(num: 4 << 24) == true
pow4(num: 4 << 26) == true
pow4(num: 4 << 28) == true
pow4(num: 4 << 30) == true
pow4(num: 4 << 32) == true
pow4(num: 4 << 34) == true
pow4(num: 4 << 36) == true
pow4(num: 4 << 38) == true
pow4(num: 4 << 40) == true
pow4(num: 4 << 42) == true
pow4(num: 4 << 44) == true
pow4(num: 4 << 46) == true
pow4(num: 4 << 48) == true
pow4(num: 4 << 50) == true
pow4(num: 4 << 52) == true
pow4(num: 4 << 54) == true
pow4(num: 4 << 56) == true
pow4(num: 4 << 58) == true
pow4(num: 4 << 60) == true

//: [Next](@next)
