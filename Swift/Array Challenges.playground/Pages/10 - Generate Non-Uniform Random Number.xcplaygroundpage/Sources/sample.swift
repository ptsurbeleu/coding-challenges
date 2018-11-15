import Foundation

/// Human-friendly type alias.
public typealias Numbers = [Int]
/// HUman-friendly type alias.
public typealias Frequencies = [Double]
/// Human-friendly type alias of number generator.
public typealias NumberGenerator = () -> Int

/// Wrapper to sample the specified generator for 1K times (eq. 1,000).
public func K1(next: NumberGenerator) -> [Int:Int] {
    return sample(iterations: 1_000, next: next)
}

/// Sampling helper to exercise a specified number generator given number of times.
func sample(iterations: Int, next: NumberGenerator) -> [Int:Int] {
    // Prepare state of the helper
    var map: [Int:Int] = [:]
    // Sample generator given the number of iterations
    for _ in 1...iterations {
        // Invoke the specified generator
        let n = next()
        // Update dictionary with the result
        map[n] = (map[n] ?? 0) + 1
    }
    // Here is the sampling summary
    return map
}
