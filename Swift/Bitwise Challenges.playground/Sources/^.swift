import Foundation

/// Returns the bits that are set in exactly one of the two arguments.
///
public func ^(lhs: Int, rhs: Int) -> NSNumber {
    // Convert into NSNumber to use it in adhoc Bool conversions
    // eq. Bool(x ^ y)
    return NSNumber(integerLiteral: lhs ^ rhs)
}
