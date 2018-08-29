import Foundation

/// Binary integer (aka. BInt) that allows sequential access to its bits
/// using i-th notation.
public struct BInt : CustomPlaygroundQuickLookable, CustomStringConvertible {
    /// Value to store.
    let n: UInt
    
    /// Custom quick look for our own type.
    public var customPlaygroundQuickLook: PlaygroundQuickLook {
        get { return PlaygroundQuickLook.uInt(UInt64(n)) }
    }
    
    /// A textual representation of this instance.
    public var description: String {
        get { return "\(n)" }
    }
    
    /// ctor.
    public init(_ n: UInt) {
        self.n = n
    }
    
    /// Query bit value in the specified position.
    ///
    /// - Parameter i: Position of the bit to query.
    public func bit(_ i: Int) -> UInt {
        // NOTE: Always query by shifting bits to the left
        return n >> UInt(i) & 1
    }
    
    /// Creates an array of binary integers from the specified number sequence.
    ///
    /// - Parameter numbers: A number sequence to create an array from.
    public static func from(_ numbers: UInt...) -> [BInt] {
        var output = [BInt]()
        for n in numbers {
            output.append(BInt(n))
        }
        return output
    }
}
