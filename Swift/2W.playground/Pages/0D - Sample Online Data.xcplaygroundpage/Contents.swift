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
    // TODO: Write some code to solve this challenge...
    fatalError("TODO: Write some code to solve this challenge...")
}


// Assert a few test cases
sample(stream: of(in:     1...4), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:     1...5), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:     1...9), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:    1...19), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:    1...29), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:    1...39), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:    1...49), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:    1...59), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:    1...69), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:    1...79), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:    1...89), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:    1...99), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:   1...999), k: 4) ?>> UNIQUE_ELEMENTS
sample(stream: of(in:  1...9999), k: 4) ?>> UNIQUE_ELEMENTS


//: [Next](@next)
