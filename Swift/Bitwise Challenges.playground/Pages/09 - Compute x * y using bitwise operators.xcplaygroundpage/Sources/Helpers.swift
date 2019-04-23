import Foundation

/// Computes sum of two signed numbers using bitwise operators only.
public func sum(x: Int, y: Int) -> Int {
    // Since function parameters in Swift are constants,
    // we declare internal variables that we can modify
    var xx = x, yy = y
    // Iterate on Y while there are bits to work with
    while yy != 0 {
        // Compute carry of X and Y, using AND, where
        // carry is a set of common bits between X and Y
        let carry = xx & yy
        // Compute sum of bits X and Y, using XOR, where sum
        // is a set of bits that are different between X and Y
        xx = xx ^ yy
        // Carry is shifted by 1, that is what we usually do
        // with carry, eq. move to the next position
        yy = carry << 1
    }
    // Here is our sum
    return xx
}
