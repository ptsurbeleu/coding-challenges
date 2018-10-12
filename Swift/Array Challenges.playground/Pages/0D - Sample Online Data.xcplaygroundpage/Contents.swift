//: [Previous](@previous)

import Foundation

/// Human-readable alias for an iterator over numbers sequence.
typealias Stream = AnyIterator<Int>
/// Human-readable alias for an array of integers.
typealias Sequence = [Int]

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/16
 
 Write a function that takes a stream of elements `stream`, number of elements `k` to select from the stream and returns a sequence of `k` elements from the stream that are randonly chosen, such that any combination of the elements is equally likely possible (eq. uniform distribution).
 
 
 EXAMPLE:
 
    Input: stream = [1,2,3,4,5,6,7,8,9], k = 4
 
    Output: [9,2,4,1]
 
 */

/// Gets a random sample of the specified size from the stream.
///
/// - Parameter stream: A stream of values to choose from.
/// - Parameter k: A number of elements to chose from the stream.
func sample(stream: Stream, k: Int) -> Sequence {
    // Prepare state of the algorithm
    var seed = k, seq = Sequence(repeating: 0, count: k)
    // Query first k elements from the stream
    for i in 0..<k { seq[i] = stream.next()! }
    // Query stream for the next element (if any)
    while let next = stream.next() {
        // Extend random generator's seed range by 1
        // to account for the current element
        seed += 1
        // Select position of the element in `0...seed`
        let x = Int.random(in: 0...seed)
        // Generator yields a value between `0` and `k - 1` is
        // a signal to replace an existing element in the sequence 
        if k > x { seq[x] = next }
    }
    // Here is the answer
    return seq
}


// Assert a few test cases
sample(stream: of(in:     1...9), k: 4)
sample(stream: of(in:    1...19), k: 4)
sample(stream: of(in:    1...29), k: 4)
sample(stream: of(in:    1...39), k: 4)
sample(stream: of(in:    1...49), k: 4)
sample(stream: of(in:    1...59), k: 4)
sample(stream: of(in:    1...69), k: 4)
sample(stream: of(in:    1...79), k: 4)
sample(stream: of(in:    1...89), k: 4)
sample(stream: of(in:    1...99), k: 4)
sample(stream: of(in:   1...999), k: 4)

//: [Next](@next)
