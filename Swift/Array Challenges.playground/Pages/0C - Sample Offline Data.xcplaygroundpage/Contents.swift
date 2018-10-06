//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/15
 
 Write a function that takes an array of unique numbers `s` as input and a size `k` and returns a subset of the given size of the array elements. All subsets should be equally likely.
 
 Return the result in input array itself and substitute remaining elements with 0.
 
 
 EXAMPLE:
 
    Input:  s = [1,2,3,4,5], k = 3
 
    Output: s = [3,2,4,0,0]
 
 */

/// Gets a randomized sample of the specified length.
///
/// - Parameter s: An original sequence to take sample from.
/// - Parameter k: Length of the resulting sample.
func sample(s: inout [Int], k: Int) {
    // Prepare state of the algorithm
    let end = s.count - 1
    // Iterate thru the range
    for lhs in 0...end {
        // Clear out remaining elements with 0
        if lhs >= k { s[lhs] = 0; continue }
        // Pick the next exchange using random generator
        let rhs = Int.random(in: lhs...end)
        // Exchange elements
        swap(&s, lhs, rhs)
    }
}


// Prepare state of the test
var seq = [Int]()

// Assert a few basic use cases 
(seq = [1]); sample(s: &seq, k: 1)
seq ?>> [1]

// Assert a few simple use cases
(seq =  [1,2,3,4,5]); sample(s: &seq, k: 3)
(seq =  [6,9,7,8,1]); sample(s: &seq, k: 3)

(seq =  [11,10,12,14,15,16]); sample(s: &seq, k: 4)
(seq =  [23,24,20,19,29,21]); sample(s: &seq, k: 4)
(seq =  [31,33,35,37,39,41]); sample(s: &seq, k: 4)
(seq =  [44,43,47,40,41,45]); sample(s: &seq, k: 4)


//: [Next](@next)
