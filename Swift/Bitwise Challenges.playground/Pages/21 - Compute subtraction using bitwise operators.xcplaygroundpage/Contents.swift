//: [Previous](@previous)

/*

 Write a function to subtract two signed integers X and Y. Keep in mind your code needs to meet the following constraints:
 
    - use only bitwise operators "<<", ">>", "|", "&", "~" and "^";
    - use assignment operator "=";
    - use equality checks and "boolean" combinations;
 
 
 EXAMPLE:
 
    Input: x = 900, y = 700
 
    Output: 200

 */

func subtract(x: Int, y: Int) -> Int {
    // Prepare state of the algorithm
    var lhs = x, rhs = y
    // Keep subtracting unless second term is 0
    while rhs != 0 {
        // Calculate bits to borrow
        let borrow = ~lhs & rhs
        // Exclusive OR to clear and copy bits 
        lhs ^= rhs
        // Get ready borrow for the next computation
        rhs = borrow << 1
    }
    // Here is the answer
    return lhs
}

// Assert a few test cases
subtract(x:    0, y:   0) ==   0
subtract(x:    0, y:   1) ==  -1
subtract(x:  900, y: 700) == 200
subtract(x: 1000, y: 999) ==   1
subtract(x: 1000, y:   1) == 999

//: [Next](@next)
