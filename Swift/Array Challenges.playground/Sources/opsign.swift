import Foundation

/// Returns a Boolean value indicating whether the two numbers have
/// opposite signs (eq. + and -).
///
public func opsign(_ lhs: Int, _ rhs: Int) -> Bool {
    // Get ready a bit mask with the sign bit (platform-specific)
    let typesize = MemoryLayout.size(ofValue: lhs) * 8,
        sign = 1 << typesize 
    // Query and compare sign bit in both numbers
    return lhs & sign != rhs & sign
}
