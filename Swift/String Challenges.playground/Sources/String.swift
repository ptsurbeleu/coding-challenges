import Foundation

public extension String {
    mutating func prepend(_ c: Character) {
        insert(c, at: startIndex)
    }
}
