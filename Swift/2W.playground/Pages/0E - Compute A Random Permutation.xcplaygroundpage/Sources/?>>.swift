import Foundation

/// Assertion function type alias.
public typealias Assertion = (Int, Int) -> Bool

/// Assertion function definition.
public let UNIQUE_ELEMENTS: Assertion = { $0 != $1 }

/// Returns an iconographic value (✅ or ❌) indicating whether the specified
/// test assertion has passed or failed.
///
/// - Parameter lhs: An actual value to compare with.
/// - Parameter assert: An helper function to perform assertion.
public func ?>>(lhs: [Int], assert: Assertion) -> Icon {
    // Prepare state of the algorithm
    var key = -1, read = 0, xhs = lhs.sorted()
    // Enumerate all items (in sorted order)
    while read < xhs.count {
        // Assert whether this item is unique or not
        if assert(xhs[read], key) == false {
            print("Expected `\(lhs)` to have unique elements only")
            return FAIL
        }
        // Query the next element in the sequence
        key = xhs[read]
        // Move on to the next element
        read += 1
    }
    // Trace current sequence for visual confirmation
    print("Looks like `\(lhs)` sequence has no duplicate elements")
    // Looks like the sequence has no duplicate elements
    return PASS
}
