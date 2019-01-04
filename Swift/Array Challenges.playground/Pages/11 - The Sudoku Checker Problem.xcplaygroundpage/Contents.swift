//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/20
 
 Write a program to verify whether an 9 x 9 2-dimensional array that represents a partially completed Sudoku is valid. Specifically, check that no row, column or 3 x 3 sub-array contains duplicates.


 EXAMPLE:

    Input: board = [[5,3,0, 0,7,0, 0,0,0],
                    [6,0,0, 1,9,5, 0,0,0],
                    [0,9,8, 0,0,0, 0,6,0],
                     
                    [8,0,0, 0,6,0, 0,0,3],
                    [4,0,0, 8,0,3, 0,0,1],
                    [7,0,0, 0,2,0, 0,0,6],
                     
                    [0,6,0, 0,0,0, 2,8,0],
                    [0,0,0, 4,1,9, 0,0,5],
                    [0,0,0, 0,8,0, 0,7,9]]
 
    Output: true
 
 
 NOTE: A 0-value in the given Sudoku board indicates that entry is blank and every other entry is in [1,9].

 */

/// A slice of Sudoku board.
typealias BoardSlice = (left: Int, right: Int, top: Int, bottom: Int)

/// Validates whether the specified Sudoku slice has unique elements only.
///
/// - Parameter board: An instance of Sudoku board.
/// - Parameter slice: An instance of Soduku board's slice to validate.
func unique(_ board: [[Int]], _ slice: BoardSlice) -> Bool {
    // Prepare state of the validator
    var nn = [Bool](repeating: false, count: board.count + 1)
    // Evaluate board's slice, eq. left-to-right
    for i in slice.left...slice.right - 1 {
        // Evaluate board's slice, eq. top-to-bottom
        for j in slice.top...slice.bottom - 1 {
            // Query board's item number and its value 
            let cx = board[i][j], xv = nn[cx]
            // Seems this slice has a duplicate
            if cx != 0 && xv == true { return false }
            // Mark this non-empty entry as already seen
            nn[cx] = true
        }
    }
    // Seems this slice has only unique numbers
    return true
}

/// Verifies whether Sudoku board is valid or not.
///
/// - Parameter: A instance of Sudoku board.
func valid(_ board: [[Int]]) -> Bool {
    // Prepare state of the algorithm
    let xx = board.count, size = sqrt(board.count)
    // Verify an every row has unique numbers only
    for rx in 0...xx - 1 {
        // Inspect the specified board slice
        let next = unique(board, (rx, rx + 1, 0, xx))
        // Should we evaluate the next slice? 
        if next == false { return false }
    }
    // Verify an every column has unique numbers only
    for cx in 0...xx - 1 {
        // Inspect the specified board slice
        let next = unique(board, (0, xx, cx, cx + 1))
        // Should we evaluate the next slice?
        if next == false { return false }
    }
    // Verify an every region (N x N) has unique numbers only
    for i in 0...size - 1 {
        for j in 0...size - 1 {
            // Calculate row coordinates
            let crx = size * i, nrx = crx + size
            // Calculate column coordinates
            let ccx = size * j, ncx = ccx + size
            // Inspect the specified board slice
            let next = unique(board, (crx, nrx, ccx, ncx))
            // Should we evaluate the next slice?
            if next == false { return false }
        }
    }
    // Here is the answer and it looks like the board is valid
    return true
}


// Assert a few core test cases
valid(AllZeros) ?>> true
valid(AllOnes) ?>> false

// Assert a few tests with duplicates
valid(AllOnesInRow) ?>> false
valid(AllOnesInColumn) ?>> false
valid(AllOnesInSquare) ?>> false

// Assert a test case with a valid example board
valid(ExampleBoard) ?>> true


//: [Next](@next)
