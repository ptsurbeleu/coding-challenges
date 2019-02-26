import Foundation

/// Compound tuple to represent assertion unit for a test case.
public typealias Assertion = (key: Int, probability: Double)

/// Returns an iconographic value (✅ or ❌) indicating whether the specified
/// test assertion has passed or failed.
///
/// - Parameter lhs: An actual value to compare with.
/// - Parameter rhs: An expected value to compare with.
public func ?>>(lhs: [Int:Int], rhs: Assertion) -> Icon {
    // Query for the sentinel value (eq. not implemented case)
    if lhs[-1] != nil { print("Non-uniform random generator is not implemented"); return FAIL }
    // Prepare shorthands to avoid repetition
    let N = total(map: lhs), p = rhs.probability
    // Calculate value of sigma of the specified key
    let sigma = sqrt(N * p * (1.0 - p))
    // Query total count of the key's hits
    let count = Double(lhs[rhs.key] ?? 0)
    // Apply 5-sigma standard to verify results of the implementation
    return abs(count - (p * N)) > (5 * sigma) ? FAIL : PASS
}

/// Simple helper to avoid embedding this into assertion operator.
///
/// - Parameter map: A dictionary (eq. map) to count total number of hits for all keys.
func total(map: [Int:Int]) -> Double {
    var sum = 0
    for k in map.keys { sum += map[k] ?? 0 }
    return Double(sum)
}
