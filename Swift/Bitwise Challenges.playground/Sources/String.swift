import Foundation

/// Custom String extensions.
///
extension String {
    /// Gets an array of unicode scalars for the given string.
    public var unicode: [UnicodeScalar] {
        return Array(self.unicodeScalars)
    }
}
