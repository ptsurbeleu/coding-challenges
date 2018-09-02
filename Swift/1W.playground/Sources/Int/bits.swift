import Foundation

/// Counts the number of bits set in the given bit pattern.
///
/// - Parameter bitPattern: An integer number to count bits.
public func bits(_ bitPattern: Int) -> Int {
    // Prepare state and convert from signed to unsigned
    var count = 0, n = UInt(bitPattern: bitPattern)
    // Keep counting bits
    while n != 0 {
        // One more bit is set
        count  += 1
        // Remove the bit we just counted
        n &= n - 1
    }
    // Here is the number of bits in the given pattern
    return count
}
