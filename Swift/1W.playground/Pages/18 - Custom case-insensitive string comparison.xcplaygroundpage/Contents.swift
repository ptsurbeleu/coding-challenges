//: [Previous](@previous)

/*
 
 Write a function that does case-insensitive comparison of two strings and returns `true` if strings are equal and `false` otherwise.
 
 
 EXAMPLE:
 
    Input: lhs = "okay", rhs = "OKAY"
 
    Output: true
 
 */

func equal(lhs: String, rhs: String) -> Bool {
    // Safe-guard from strings of different length

    // Prepare state of the algorithm

    // Iterate thru all characters

        // Compute characters diff with XOR

        // Compare characters diff with bit masks

            // Seems strings are different


        
    // Both strings are equal

}

// Assert a few test cases
equal(lhs: "okay", rhs: "OKAY") == true
equal(lhs: "xoxo", rhs: "XoXo") == true
equal(lhs: "1o1o", rhs: "1o1o") == true
equal(lhs: "1111", rhs: "1111") == true
equal(lhs: "okay", rhs: "OLAY") == false
equal(lhs: "0000", rhs: "zzz")  == false

//: [Next](@next)
