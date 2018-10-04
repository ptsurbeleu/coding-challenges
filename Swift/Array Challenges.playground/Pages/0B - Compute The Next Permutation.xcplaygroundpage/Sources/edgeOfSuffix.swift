import Foundation

/// Finds an edge of the monotonically increasing suffix.
///
/// - Parameter s: A sequence to search for.
public func edgeOfSuffix(s: [Int]) -> Int {
    // Put reading head `x` into the position next to the last
    // in the sequence, therefore subtract 2 from the count.
    var x = s.count - 2
    // Enumerate pairs of elements, eq. [x] and [x + 1] 
    while x >= 0 {
        // Look for a pair of elements where x < y, eq. 1 < 5
        if s[x] < s[x + 1] { break }
        // Move on to the next pair of elements
        x -= 1
    }
    // Here is the edge of the suffix or -1 if the edge is not found
    return max(x, -1)
}
