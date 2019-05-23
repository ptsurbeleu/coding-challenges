import Foundation

/// Custom prefix decrement operator.
///
prefix operator --

/// Decrement the original value by 1 and return the updated value.
///
public prefix func --(lhs: inout Int) -> Int {
    lhs = lhs - 1
    return lhs
}
