import Foundation

/// A test 3 x 3 board that is empty and filled with 0s.
///
/// ````
/// [0, 0, 0],
/// [0, 0, 0],
/// [0, 0, 0]
/// ````
public let AllZeros = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
]


/// A test 3 x 3 board that has a single row filled with 1s.
///
/// ```
/// [0, 0, 0],
/// [1, 1, 1],
/// [0, 0, 0]
/// ```
public let AllOnesInRow = [
    [0, 0, 0],
    [1, 1, 1],
    [0, 0, 0]
]

/// A test 3 x 3 board that has a single column filled with 1s.
///
/// ```
/// [0, 1, 0],
/// [0, 1, 0],
/// [0, 1, 0]
/// ```
public let AllOnesInColumn = [
    [0, 1, 0],
    [0, 1, 0],
    [0, 1, 0]
]

/// A test 4 x 4 board that has a few 2 x 2 regions filled with 1s.
/// ```
/// [1,0, 0,0],
/// [0,1, 0,0],
///
/// [0,0, 1,0],
/// [0,0, 0,1]
/// ```
public let AllOnesInSquare = [
    [1,0, 0,0],
    [0,1, 0,0],
    
    [0,0, 1,0],
    [0,0, 0,1]
] 

/// A test 3 x 3 board that has all rows, columns and regions filled with 1s.
/// ```
/// [1, 1, 1],
/// [1, 1, 1],
/// [1, 1, 1]
/// ```
public let AllOnes = [
    [1, 1, 1],
    [1, 1, 1],
    [1, 1, 1]
]

/// An example 9 x 9 board that is valid.
/// ```
/// [5,3,0, 0,7,0, 0,0,0],
/// [6,0,0, 1,9,5, 0,0,0],
/// [0,9,8, 0,0,0, 0,6,0],
///
/// [8,0,0, 0,6,0, 0,0,3],
/// [4,0,0, 8,0,3, 0,0,1],
/// [7,0,0, 0,2,0, 0,0,6],
///
/// [0,6,0, 0,0,0, 2,8,0],
/// [0,0,0, 4,1,9, 0,0,5],
/// [0,0,0, 0,8,0, 0,7,9]
/// ```
public let ExampleBoard = [
    [5,3,0, 0,7,0, 0,0,0],
    [6,0,0, 1,9,5, 0,0,0],
    [0,9,8, 0,0,0, 0,6,0],
    
    [8,0,0, 0,6,0, 0,0,3],
    [4,0,0, 8,0,3, 0,0,1],
    [7,0,0, 0,2,0, 0,0,6],
    
    [0,6,0, 0,0,0, 2,8,0],
    [0,0,0, 4,1,9, 0,0,5],
    [0,0,0, 0,8,0, 0,7,9]
]
