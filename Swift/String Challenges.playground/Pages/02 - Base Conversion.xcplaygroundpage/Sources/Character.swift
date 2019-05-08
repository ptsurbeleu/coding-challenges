import Foundation

/// Convenience extension to simplify routine operations.
public extension Character {    
    /// Creates a character containing the given US-ASCII scalar value.
    ///
    /// - Parameter ascii: The US-ACII scalar value to convert into a character.
    init(ascii: UInt8) {
        self.init(Unicode.Scalar(ascii))
    }
}
