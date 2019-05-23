import Foundation

public extension Array {
    func end() -> Array.Index {
        return endIndex
    }
}

public extension Range {
    func end() -> Range.Bound {
        return upperBound
    }
}
