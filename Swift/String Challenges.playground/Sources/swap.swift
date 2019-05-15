import Foundation

/// Swaps elements of the array (in-place).
///
/// - Parameter input: An array to swap the elements.
/// - Parameter a: An index of an element to swap.
/// - Parameter b: An index of an element to swap.
public func swap(_ input: inout [Character], _ a: Int, _ b: Int) {
    // No-op when indexes are the equal
    if a == b { return }
    // Copy values from elements
    let x = input[a], y = input[b]
    // Swap values of elements
    input[a] = y; input[b] = x
}
