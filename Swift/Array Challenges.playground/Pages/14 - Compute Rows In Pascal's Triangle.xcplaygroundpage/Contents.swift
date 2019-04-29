//: [Previous](@previous)

/*
 
 Write a function that takes an positive integer `n` as an input and returns the first `n` rows of Pascal's triangle. 
 
 EXAMPLE:
 
    Input: n = 5
 
    Output: [    [1],
                [1,1],
               [1,2,1],
              [1,3,3,1],
             [1,4,6,4,1]]
 
 */

/// Generates the first `n` rows of Pascal's triangle.
///
/// - Parameter n: A number of rows to return. 
func generate(n: Int) -> PascalTriangle {
    // Get ready Triangle's Output
    var tro = PascalTriangle(repeating: [], count: n)
    // Enumerate each Row's indeX
    for rx in 0..<n {
        // Get ready Current Row's Output
        var cro = RowEntry(repeating: 0, count: rx + 1)
        // Enumerate an every Right-Hand poSition in the row 
        for rhs in 0...rx {
            // Should we re-use the Last row's eLements Value?
            let llv = rhs > 0 && rhs < rx
            // Last Row's indeX and Left-Hand poSition in the row
            let lrx = rx - 1, lhs = rhs - 1
            // Compute Left-Hand Value or default to 1,
            // if no need to re-use Last row's eLements Value
            let lhv = llv ? tro[lrx][lhs] : 1
            // Compute Right-Hand Value or default to 0,
            // if no need to re-use Last row's eLements Value
            let rhv = llv ? tro[lrx][rhs] : 0
            // Append sum of Left-Hand and Right-Hand Values 
            // to the Current Row's Output
            cro[rhs] = lhv + rhv
        }
        // Append Current Row's Output to the Triangle's Output
        tro[rx] = cro
    }
    // Here is the final answer, eq. Triangle's Output
    return tro
}


// Assert a few base test cases
generate(n: 0) ?>> PO_0
generate(n: 1) ?>> PO_1
generate(n: 2) ?>> PO_2
generate(n: 3) ?>> PO_3
generate(n: 4) ?>> PO_4
generate(n: 5) ?>> PO_5
generate(n: 6) ?>> PO_6
generate(n: 7) ?>> PO_7
generate(n: 8) ?>> PO_8
generate(n: 9) ?>> PO_9

// Assert a few larger test cases
generate(n: 10) ?>> PO_10
generate(n: 11) ?>> PO_11
generate(n: 12) ?>> PO_12
generate(n: 13) ?>> PO_13
generate(n: 14) ?>> PO_14
generate(n: 15) ?>> PO_15
generate(n: 16) ?>> PO_16
generate(n: 17) ?>> PO_17
generate(n: 18) ?>> PO_18
generate(n: 19) ?>> PO_19

// Assert a few even larger test cases
generate(n: 20) ?>> PO_20
generate(n: 21) ?>> PO_21
generate(n: 22) ?>> PO_22
generate(n: 23) ?>> PO_23
generate(n: 24) ?>> PO_24
generate(n: 25) ?>> PO_25
generate(n: 26) ?>> PO_26
generate(n: 27) ?>> PO_27
generate(n: 28) ?>> PO_28
generate(n: 29) ?>> PO_29

// Assert a few larger even larger test cases
generate(n: 30) ?>> PO_30
generate(n: 31) ?>> PO_31
generate(n: 32) ?>> PO_32
generate(n: 33) ?>> PO_33
generate(n: 34) ?>> PO_34


//: [Next](@next)
