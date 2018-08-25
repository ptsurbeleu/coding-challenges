import Foundation

/// Helps to build bit masks for negative numbers
///
/// - Parameter rhs: A an integer to use as the right side of the resultig mask.
public func fffx(_ rhs: Int) -> Int {
    // This is left part of the bit mask
    let lhs = µ(0xffff_ffff_ffff_0000)
    // Customize the resulting mask using input provided
    return lhs | rhs
}
