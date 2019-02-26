import Foundation

/// Counts total number of elements in a 2D array.
///
/// - Parameter array: An instance of 2D array.
public func total<Element>(array: [[Element]]) -> Int {
    // Prepare state
    var count = 0
    // Iterate over each and every row
    for i in 0...array.count - 1 {
        // Iterate over each and every column
        for _ in 0...array[i].count - 1 {
            // Count in one more element
            count += 1
        }
    }
    // Here is the answer
    return count
}
