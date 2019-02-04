//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/21
 
 Write a program that takes a matrix (eq. 2D array) as an argument and returns a flat sequence (eq. single-dimensional array) of elements from the original matrix in spiral order.  
 
 EXAMPLE:
 
   Input: m = [[1,2,3],
                [4,5,6],
                [7,8,9]]
 
   Output: [1,2,3,6,9,8,7,4,5]

 */

/// Type alias to represent input of the algorithm.
typealias Matrix = [[Int]]

/// Type alias to represent output of the algorithm. 
typealias Pieces = [Int]

/// Type alias to represent an intermediate state of the algorithm,
/// such as (x,y) coordinates and direction of the given point in the matrix.
typealias Point = (x: Int, y: Int, dir: Int)

/// An integer constant to mark a visited point in the matrix.
let VISITED = 0

/// A Point value that is adjacent (eq. next) to the point specified as an argument.
///
/// When you need to compute the next point using coordinates
/// of the current point, use `next` function.
///
/// - Parameter p: An instance of the current point.
func next(_ p: Point) -> Point {
    // Prepare initial state of the computation
    let dx = [0,1,0,-1], dy = [1,0,-1,0], dir = p.dir % 4
    // Calculate (x) and (y) coordinates of the next point
    // in the same direction
    return (p.x + dx[dir], p.y + dy[dir], p.dir)
}

/// A Boolean value indicating whether the point is outside of the matrix boundaries.
///
/// When you need to check whether a given point is outside of the boundaries, use the
/// `outside` function.
///
/// - Parameter p: An instance of the point to check.
/// - Parameter m: An instance of the matrix to check with.
func outside(_ p: Point, _ m: Matrix) -> Bool {
    // Check whether `x` coordinate is outside of the boundaries 
    if p.x < 0 || p.x >= m.count { return true }
    // Check whether `y` coordinate is outside of the boundaries
    if p.y < 0 || p.y >= m.count { return true }
    // Check whether the given point is visited already
    if m[p.x][p.y] == VISITED { return true }
    // Looks like this point is not ouside of the boundaries 
    return false
}

/// A Pieces value with elements of the original matrix in spiral order.
///
/// When you need to order elements of the specified matrix in spiral order, use `order` function.
///
/// - Parameter m: An instance of `N x N` matrix to order elements.
func order(m: Matrix) -> Pieces {
    // Prepare state of the algorithm
    var p: Point = (0,0,0), mm = m
    // Prepare output collection of elements
    var pcs = Pieces(repeating: 0, count: m.count * m.count)
    // Process each & every element of the output collection
    for i in 0...pcs.count - 1 {
        // Copy value of the current point from the matrix 
        pcs[i] = mm[p.x][p.y]
        // Mark current point as `visited` in the matrix
        mm[p.x][p.y] = VISITED
        // Compute next point + move this point to the next edge 
        let nx = next(p), rx = (p.x,p.y,p.dir + 1)
        // Use the next point or use the point on the next edge
        p = outside(nx, mm) ? next(rx) : nx
    }
    // Here is our answer
    return pcs
}


// Assert a few core test cases
order(m: MX1) ?>> MO1
order(m: MX2) ?>> MO2
order(m: MX3) ?>> MO3
order(m: MX4) ?>> MO4
order(m: MX5) ?>> MO5
order(m: MX6) ?>> MO6
order(m: MX7) ?>> MO7
order(m: MX8) ?>> MO8
order(m: MX9) ?>> MO9

// Assert a few more advanced test cases
order(m: MX10) ?>> MO10
order(m: MX11) ?>> MO11
order(m: MX12) ?>> MO12
order(m: MX13) ?>> MO13
order(m: MX14) ?>> MO14
order(m: MX15) ?>> MO15
order(m: MX16) ?>> MO16
order(m: MX17) ?>> MO17
order(m: MX18) ?>> MO18
order(m: MX19) ?>> MO19

// Assert a few more advanced test cases
order(m: MX20) ?>> MO20
order(m: MX21) ?>> MO21
order(m: MX22) ?>> MO22
order(m: MX23) ?>> MO23
order(m: MX24) ?>> MO24
order(m: MX25) ?>> MO25
order(m: MX26) ?>> MO26
order(m: MX27) ?>> MO27
order(m: MX28) ?>> MO28
order(m: MX29) ?>> MO29
order(m: MX30) ?>> MO30

//: [Next](@next)
