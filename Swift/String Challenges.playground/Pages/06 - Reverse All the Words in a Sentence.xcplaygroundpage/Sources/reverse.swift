import Foundation

public extension Array {
    /// TBD
    ///
    mutating func reverse(_ subrange: Range<Int>) {
        var x = subrange.start(), y = subrange.end()
        while x < y {
            let h = self[x]
            self[x++] = self[--y]
            self[y] = h
        }
    }
}
