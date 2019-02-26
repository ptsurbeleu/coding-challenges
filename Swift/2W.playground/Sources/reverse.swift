import Foundation

/// Puts sequence elements in the specified positions into reverse order.
///
/// - Parameter seq: A sequence to apply the function to.
/// - Parameter from: A starting position of the element (inclusive).
/// - Parameter to: An ending position of the element (inclusive).
public func reverse(seq: inout [Int], _ from: Int, _ to: Int) {
    // Initialize 'R/W` heads on the left & right of the range
    var lhs = from, rhs = to
    // Keep exchanging unless heads crossed-over each other
    while lhs < rhs {
        // Exchange the elements in-place
        swap(&seq, lhs, rhs)
        // Move head to the next element on the left
        lhs += 1
        // Move head to the next element on the right
        rhs -= 1
    }
}
