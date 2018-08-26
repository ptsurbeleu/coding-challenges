//: [Previous](@previous)

/*
 
 Write a function to find out whether the specified subrange of a binary sequence represents even or odd number.
 
 
 EXAMPLE:
 
    Input: n = [1,0,1,0], seq = 1...3
 
    Output: "even" (since 010 represents 2, which is an even number)
 
 */


/// Calculates whether the given subrange represents even or odd number.
///
func parity(n: [Int], seq: ClosedRange<Int>) -> String {
    // Query the least significant bit to find out subrange's parity 
    return n[seq.upperBound] == 0 ? "even" : "odd"
}

// Assert a few test cases
parity(n: [0,0,0,0], seq: 0...3) == "even"
parity(n: [1,0,1,0], seq: 1...3) == "even"
parity(n: [1,0,1,1], seq: 0...1) == "even"
parity(n: [1,0,1,1], seq: 1...3) == "odd"
parity(n: [1,0,1,1], seq: 0...0) == "odd"
parity(n: [1,0,1,1], seq: 2...3) == "odd"

//: [Next](@next)
