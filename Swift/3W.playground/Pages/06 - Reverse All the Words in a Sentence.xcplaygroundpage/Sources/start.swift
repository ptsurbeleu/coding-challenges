import Foundation

public extension Array {
    func start() -> Array.Index {
        return startIndex
    }
}

public extension Range {
    func start() -> Range.Bound {
        return lowerBound
    }
}
