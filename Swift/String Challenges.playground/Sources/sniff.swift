import Foundation

/// "Sniff" a string and return a tuple with the string itself alongside with a flag indicating whether it represents a positive or negative number.  
///
public func sniff(s: String) -> (str: String, negative: Bool) {
    // This tuple is for negatvie string (as a number)
    if s.starts(with: "-") {
        let lxs = s.index(after: s.start())
        return (String(s[lxs..<s.end()]), true)
    }
    // This tuple is for positive string (as a number)
    return (s, false)
}
