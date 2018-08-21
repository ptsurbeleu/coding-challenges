//: [Previous](@previous)

/*
 
 Write a function that does case-insensitive comparison of two strings and returns `true` if strings are equal and `false` otherwise.
 
 
 EXAMPLE:
 
    Input: lhs = "okay", rhs = "OKAY"
 
    Output: true
 
 */

func equal(lhs: String, rhs: String) -> Bool {
    // Safe-guard from strings of different length
    if lhs.characters.count != rhs.characters.count {
        return false
    }
    // Prepare state of the algorithm
    var ls = lhs.unicode, rs = rhs.unicode, i = 0
    // Iterate thru all characters
    while i < ls.count {
        // Compute characters diff with XOR
        let diff = ls[i].value ^ rs[i].value
        // Compare characters diff with bit masks
        if diff != 0x20 && diff != 0x00 {
            // Seems strings are different
            return false
        }
        // Move on to the next character
        i += 1
    }
    // Both strings are equal
    return true
}

// Assert a few test cases
equal(lhs: "okay", rhs: "OKAY") == true
equal(lhs: "xoxo", rhs: "XoXo") == true
equal(lhs: "1o1o", rhs: "1o1o") == true
equal(lhs: "1111", rhs: "1111") == true
equal(lhs: "okay", rhs: "OLAY") == false
equal(lhs: "0000", rhs: "zzz")  == false


//: [Next](@next)
