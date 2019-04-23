import Foundation

/// Special type (aliased) to represent iconographic values.
public typealias Icon = Character

// Internal definitions
public let PASS: Icon = "✅", FAIL: Icon = "❌"

/// Custom infix operator to validate test assertion statements using
/// iconographics vs. strings to improve test assertions readability.
infix operator ?>>

/// Returns an iconographic value (✅ or ❌) indicating whether the specified 
/// test assertion has passed or failed.
///
/// - Parameter lhs: An actual value to compare with.
/// - Parameter rhs: An expected value to compare with.
public func ?>><Element : Equatable>(lhs: Element, rhs: Element) -> Icon {
    // Trivial comparison via Equatable protocol cuts it
    return lhs == rhs ? PASS : FAIL
}

/// Returns an iconographic value (✅ or ❌) indicating whether the specified 
/// test assertion has passed or failed.
///
/// - Parameter lhs: An actual value to compare with.
/// - Parameter rhs: An expected value to compare with.
public func ?>><Element : Equatable>(lhs: [Element], rhs: [Element]) -> Icon {
    // Trivial comparison via Equatable protocol cuts it 
    return lhs == rhs ? PASS : FAIL
}

/// Returns an iconographic value (✅ or ❌) indicating whether the specified
/// test assertion has passed or failed.
///
/// - Parameter lhs: An actual value to compare with.
/// - Parameter rhs: An expected value to compare with.
public func ?>><T: Equatable>(lhs: (T,[T]), rhs: (T,[T])) -> Icon {
    // Trivial comparison via Equatable protocol cuts it
    return lhs.0 == rhs.0 && lhs.1 == rhs.1 ? PASS : FAIL
}
