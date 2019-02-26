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
    // TODO: Write some code to solve this challenge...
    fatalError("TODO: Write some code to solve this challenge...")
}

/// Verifies whether Sudoku board is valid or not.
///
/// - Parameter: A instance of Sudoku board.
func valid(_ board: [[Int]]) -> Bool {
    // TODO: Write some code to solve this challenge...
    fatalError("TODO: Write some code to solve this challenge...")
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
