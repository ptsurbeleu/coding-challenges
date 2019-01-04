import Foundation

/// Special type alias to represent a single point in a Sudoku board.
public typealias Point = (x: Int, y: Int)

/// Trace out the given Sudoku board and mark specified point with `*` in the tracing printout.
///
/// - Parameter m: A Sudoku board to trace out.
/// - Parameter p: A single point in the board to trace out.
public func trace(_ m: [[Int]], _ p: Point? = nil) {
    // Prepare a string representation of the given Sudoku board rows
    var mx = [String](repeating: "", count: m.count)
    // Enumerate each and every row of the board
    for i in 0...m.count - 1 {
        // Find out a point to insert row / column spacer
        let sp = sqrt(m[i].count)
        // Insert row spacer
        if i % sp == 0 { mx[i] += "\n" }
        // Enumerate each and every item in the current row
        for j in 0...m[i].count - 1 {
            // Insert column spacer
            if j % sp == 0 { mx[i] += " " }
            // Either number or `-` for an empty cell
            let xv = m[i][j] == 0 ? "-" : "\(m[i][j])"
            // Printout value as is or use `*` for the specified point
            mx[i] += p?.x == i && p?.y == j ? " * " : " \(xv) " 
        }
    }
    // Print out each and every row in the board
    for ln in mx { print(ln) }
    // Print out a horizontal spacer to aid the reading experience
    print("\t\t\t___")
}

/*
 
 NOTE: Here is an example of tracing out an example board and (9,9) point.
 
 5  3  -   -  7  -   -  -  - 
 6  -  -   1  9  5   -  -  - 
 -  9  8   -  -  -   -  -  - 
 
 -  -  -   -  -  -   -  -  - 
 -  -  -   -  -  -   -  -  - 
 -  -  -   -  -  -   -  -  - 
 
 -  -  -   -  -  -   -  -  - 
 -  -  -   -  -  -   -  -  - 
 -  -  -   -  -  -   -  -  * 
 
 */
