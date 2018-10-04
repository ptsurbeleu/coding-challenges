import Foundation

/// Finds and swap (if found) an entry that is the next smallest after `x` in the suffix.
/// In case `s = [6,2,1,5,4,3,0]` and `x = 2` the function will exchange entry `1` in 
/// position 2 with the entry `3` in position `5`. Since `3` is the next entry greater
/// than `1`.
///
/// - Parameter s: A sequence to search and swap.
/// - Parameter x: An index of the element to compare and swap with.
public func swapNextInSuffix(s: inout [Int], x: Int) {
    // Prepare state of the algorithm
    let lhs = s[x], y = s.count - 1
    // Enumerate sequence's suffix elements in reverse order,
    // eq. from n...0
    for i in (x...y).reversed() {
        // Skip entries smaller than or equal to the entry of `x` 
        if lhs >= s[i] { continue }
        // Swap entry of `x` with the entry of `i`, eq. it would be
        // the first entry of `i` greater than entry of `x`
        swap(&s, x, i)
        // Break out from the loop, we're done
        break
    }
}
