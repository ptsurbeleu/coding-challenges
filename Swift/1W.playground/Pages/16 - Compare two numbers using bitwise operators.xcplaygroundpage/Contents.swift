//: [Previous](@previous)

/*
 
 Write a function find out whether two numbers are equal without using arithmetic or comparison operators. 
 
 
 EXAMPLE:
 
    Input: x = 999, y = 1000
 
    Output: false
 
 
 EXAMPLE:
 
    Input: x = 333, y = 333
 
    Output: true
 
 */

/// Compares two numbers using bitwise operators only.
///
func equal(x: Int, y: Int) -> Bool {
    // Apply NSNumber-aware XOR imlpementation and 
    // use result as a boolean literal

}


// Assert a few test cases
equal(x:   1, y:    1) == true
equal(x:   2, y:    1) == false
equal(x: 999, y: 1000) == false
equal(x:  -1, y:   -1) == true
equal(x: 333, y:  333) == true
equal(x:   0, y:    0) == true
equal(x: 249, y:  764) == false

//: [Next](@next)
