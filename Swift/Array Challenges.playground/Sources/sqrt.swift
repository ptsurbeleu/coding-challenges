import Foundation

/// A missing `sqrt` function for integers.
///
/// - Parameter v: An integer value to compute a square root for.
public func sqrt(_ v: Int) -> Int {
    let answer = sqrt(Double(v))
    return Int(answer)
}
