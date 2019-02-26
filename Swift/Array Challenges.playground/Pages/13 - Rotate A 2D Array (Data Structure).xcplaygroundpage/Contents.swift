//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/22
 
 Write a data structure that takes as input an `n x n` 2-dimensional array, and rotates the array by 90 degrees clockwise.
 
 EXAMPLE:
 
    Input:  [[ 1,  2,  3,  4],
             [ 5,  6,  7,  8],
             [ 9, 10, 11, 12],
             [13, 14, 15, 16]]
 
    Output: [[13,  9, 5, 1],
             [14, 10, 6, 2],
             [15, 11, 7, 3],
             [16, 12, 8, 4]]
 
 */

/// Wrapper type struct to provide clockwise-rotated access to the elements 
/// of the original 2D array (eq. matrxi).
struct RotatedMatrix<Element: Equatable>: Collection {

    /// Copy of the original matrix. 
    let matrix: [[Element]]

    /// Shorthand to the matrix's elements count.
    var size: Int { return matrix.count }
    
    /// The position of the first element in a nonempty collection.
    ///
    /// If the collection is empty, `startIndex` is equal to `endIndex`.
    var startIndex: Int { return matrix.startIndex }
    
    /// The collection's "past the end" position---that is, the position one
    /// greater than the last valid subscript argument.
    ///
    /// If the collection is empty, `endIndex` is equal to `startIndex`.
    var endIndex: Int { return size * size }
    
    /// Accesses the element at the specified position.
    ///
    /// You can subscript a collection with any valid index other than the
    /// collection's end index. The end index refers to the position one past
    /// the last element of a collection, so it doesn't correspond with an
    /// element.
    ///
    /// - Parameter position: The position of the element to access. `position`
    ///   must be a valid index of the collection that is not equal to the
    ///   `endIndex` property.
    ///
    /// - Complexity: O(1)
    subscript(position: Int) -> Element {
        // Guard access beyond boundaries of the original matrix
        precondition(position < endIndex, "Can't subscript an element in position beyond endIndex")
        // Translate position into coordinates of the matrix
        let x = position / size, y = position % size
        // Query element from the original matrix
        return matrix[size - 1 - y][x]
    }
    
    /// Returns the position immediately after the given index.
    ///
    /// - Parameter i: A valid index of the collection. `i` must be less than
    ///   `endIndex`.
    /// - Returns: The index value immediately after `i`.
    func index(after i: Int) -> Int {
        // Guard access beyond boundaries of the original matrix
        precondition(i < endIndex, "Can't advance beyond endIndex")
        // Advance to the next element
        return i + 1
    }
}

/// Conform to Equatable protocol for testing purposes.
extension RotatedMatrix: Equatable {

    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    static func == (lhs: RotatedMatrix, rhs: [[Element]]) -> Bool {
        // Verify sequences are of the same length
        if lhs.endIndex != total(array: rhs) { return false }
        // Enumerate sequences and compare elements
        let size = rhs.count
        for i in 0...size - 1 {
            for j in 0...size - 1 {
                // Translate coordinates of a matrix into a flat array 
                let x = (i * size) + j
                // Actual comparison
                if lhs[x] != rhs[i][j] { return false }
            }
        }
        // Looks like both sequences are equal
        return true
    }
}

/// Returns an iconographic value (✅ or ❌) indicating whether the specified 
/// test assertion has passed or failed.
///
/// - Parameter lhs: An actual value to compare with.
/// - Parameter rhs: An expected value to compare with.
func ?>>(lhs: RotatedMatrix<Int>, rhs: [[Int]]) -> Icon {
    // Simple comparison is enough
    return lhs == rhs ? PASS : FAIL
}


/// Assert a few basic test cases
RotatedMatrix(matrix: MX0) ?>> MO0
RotatedMatrix(matrix: MX1) ?>> MO1
RotatedMatrix(matrix: MX2) ?>> MO2
RotatedMatrix(matrix: MX3) ?>> MO3

// Assert a few advanced test cases 
RotatedMatrix(matrix: MX4) ?>> MO4
RotatedMatrix(matrix: MX5) ?>> MO5
RotatedMatrix(matrix: MX6) ?>> MO6
RotatedMatrix(matrix: MX7) ?>> MO7
RotatedMatrix(matrix: MX8) ?>> MO8
RotatedMatrix(matrix: MX9) ?>> MO9

// Assert a few advanced test cases 
RotatedMatrix(matrix: MX10) ?>> MO10
RotatedMatrix(matrix: MX11) ?>> MO11
RotatedMatrix(matrix: MX12) ?>> MO12
RotatedMatrix(matrix: MX13) ?>> MO13
RotatedMatrix(matrix: MX14) ?>> MO14
RotatedMatrix(matrix: MX15) ?>> MO15
RotatedMatrix(matrix: MX16) ?>> MO16
RotatedMatrix(matrix: MX17) ?>> MO17
RotatedMatrix(matrix: MX18) ?>> MO18
RotatedMatrix(matrix: MX19) ?>> MO19
RotatedMatrix(matrix: MX20) ?>> MO20


//: [Next](@next)
