//: [Previous](@previous)

/*
 
 Write a function to convert a given integer into its octal string representation.
 
 
 EXAMPLE:
 
    Input: 0b010_111_111
 
    Output: "277"
 
 */


func oct(n: Int) -> String {
    // Prepare state of the algorithm
    var nn = n, str = ""
    // Keep converting until there are no more bits
    while nn != 0 {
        // Query three bits and append their value
        str = String(nn & 0x7) + str
        // Move to the next three bits
        nn >>= 3
    }
    // Here is our answer
    return str
}

// Assert a few test cases
oct(n: 0b000_110_101) == "65"
oct(n: 0b110_001_111) == "617"
oct(n: 0b010_111_111) == "277"
oct(n: 0b010_011_011) == "233"
oct(n: 0b011_101_001) == "351"
oct(n: 0b111_111_111) == "777"

//: [Next](@next)
