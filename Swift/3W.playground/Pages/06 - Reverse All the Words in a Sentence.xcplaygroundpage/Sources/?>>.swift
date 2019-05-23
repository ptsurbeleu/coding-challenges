import Foundation

extension String {
    func reveal() -> String {
        return String(map { $0 == " " ? "˚" : $0 })
    }
}

/// Returns an iconographic value (✅ or ❌) indicating whether the specified 
/// test assertion has passed or failed.
///
/// - Parameter lhs: An actual value to compare with.
/// - Parameter rhs: An expected value to compare with.
public func ?>>(lhs: String, rhs: String) -> Icon {
    // Trivial string comparison cuts it
    let equal = lhs == rhs
    // Replace spaces with something more accountable for troubleshooting
    if equal == false {
        print("Expected '\(lhs.reveal())' to be equal to '\(rhs.reveal())'")
    }
    return equal ? PASS : FAIL
}
