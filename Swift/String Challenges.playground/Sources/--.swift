import Foundation

/// Custom postfix decrement operator.
///
postfix operator --


/// Decrement the original value by 1 and return the original value.
///
public postfix func --(lhs: inout Int) -> Int {
    let rhs = lhs; lhs = lhs - 1
    return rhs
}
