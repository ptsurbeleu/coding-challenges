//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/23
 
 Write a function that takes as input an `n x n` 2-dimensional array, and return the original array rotated by 90 degrees clockwise.
 
 EXAMPLE:
 
    Input: [[ 1,  2,  3,  4],
            [ 5,  6,  7,  8],
            [ 9, 10, 11, 12],
            [13, 14, 15, 16]]
 
     Output: [[13,  9, 5, 1],
              [14, 10, 6, 2],
              [15, 11, 7, 3],
              [16, 12, 8, 4]]
 
 */

/// Type alias to represent a 2-dimensional array (eq. matrix)
typealias Matrix = [[Int]]

/// Rotates the given matrix by 90 degrees clockwise.
func rotate(m: Matrix) -> Matrix {
    // Prepare a constant & make a copy of the original matrix
    let n = m.count; var om = m
    // Enumerate matrix in layers, working towards the center
    for layer in 0..<(n / 2) {
        // Compute layer's start and end
        let start = layer, end = n - 1 - layer
        // Touch and swap each item of the current layer
        for head in start..<end {
            // Calculate offset from the start
            let offset = head - start
            // Calculate Last eleMent's Column and Row
            let lmc = head, lmr = start,
            // Calculate First eleMent's Column and Row
                fmc = lmr,  fmr = end - offset,
            // Calculate Second eleMent's Column and Row
                smc = fmr, smr = end,
            // Calculate Third eleMent's Column and Row
                tmc = smr, tmr = lmc

            // Make a copy of the Last eleMent
            let lm = om[lmr][lmc]

            // Swap elements, first takes place of the last
            om[lmr][lmc] = om[fmr][fmc]
            // Swap elements, second takes place of the first
            om[fmr][fmc] = om[smr][smc]
            // Swap elements, third takes place of the second
            om[smr][smc] = om[tmr][tmc]
            // Swap elements, last takes place of the third
            om[tmr][tmc] = lm
        }
    }
    // Here is our matrix rotated by 90 degrees clockwise
    return om
}


// Assert a few basic test cases
rotate(m: MX0) ?>> MO0
rotate(m: MX1) ?>> MO1
rotate(m: MX2) ?>> MO2
rotate(m: MX3) ?>> MO3


// Assert a few advanced test cases
rotate(m: MX4) ?>> MO4
rotate(m: MX5) ?>> MO5
rotate(m: MX6) ?>> MO6
rotate(m: MX7) ?>> MO7
rotate(m: MX8) ?>> MO8
rotate(m: MX9) ?>> MO9


// Assert a few even more advanced test cases
rotate(m: MX10) ?>> MO10
rotate(m: MX11) ?>> MO11
rotate(m: MX12) ?>> MO12
rotate(m: MX13) ?>> MO13
rotate(m: MX14) ?>> MO14
rotate(m: MX15) ?>> MO15
rotate(m: MX16) ?>> MO16
rotate(m: MX17) ?>> MO17
rotate(m: MX18) ?>> MO18
rotate(m: MX19) ?>> MO19
rotate(m: MX20) ?>> MO20


//: [Next](@next)
