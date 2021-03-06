import Foundation

public extension String {
    mutating func prepend(_ c: Character) {
        insert(c, at: startIndex)
    }
    
    func start() -> String.Index {
        return startIndex
    }
    
    func end() -> String.Index {
        return endIndex
    }
}
