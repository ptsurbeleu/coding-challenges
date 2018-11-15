//: [Previous](@previous)

import Foundation

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/19
 
 Write a function that takes two arguments, an array of numbers (to choose from) and an array of doubles (probability of each choice), and produces non-uniform random number (eq. chosen from the first array) according to the corresponding probability in the second array.
 
 EXAMPLE:
 
    Input: s = [3,5,7,11], p = [9/18,6/18,2/18,1/18]

    Output: 3 (5, 7 or 11)
 
 */

/// Binary search implementation with quirks, eq. returns either
/// the exact match or the closest element within the specified
/// range (approximation).
///
/// - Parameter seq: A sequence used to search for the specified value.
/// - Parameter v: An actual value to search for in the sequence.
func search(_ seq: [Double], _ v: Double) -> Int {
    // Prepare state of the algorithm
    var lo = 0, hi = seq.count - 1
    // Keep iterating while operating within the boundaries
    while hi >= lo {
        // Compute position & query value of the element in the middle
        let mid = lo + (hi - lo) / 2, vv = seq[mid]
        // Is this an exact match?
        if vv == v { return mid }
        // Swith to the left part of the sequence
        if vv > v { hi = mid - 1 }
        // Switch to the right part of the sequence
        else { lo = mid + 1 }
    }
    // Choose the closest approximate element in the sequence
    return min(lo, abs(hi))
}

/// Generates a non-uniform random number from the specified sequence
/// and using the specified probability.
///
/// - Parameter s: A sequence to generate numbers from.
/// - Parameter p: A specification (eq. probabilities) for the random generator.
public func next(s: [Int], p: [Double]) -> Int {
    // Prepare state of the algorithm
    var sum = 0.0, seq = [Double](repeating: 0, count: p.count)
    // Compute a list of endpoints from the original specification
    for i in 0...p.count - 1 {
        // Define the current endpoint's boundary
        seq[i] = sum
        // Update boundary of the next endpoint
        sum += p[i]
    }
    // Generate random double number from the specified range
    let rx = Double.random(in: 0...1)
    // Search for the closest endpoint using approximation
    let nx = search(seq, rx)
    // Here is our answer
    return s[nx]
}


// Assert a very simple base case (eq. 100%)
let MAP_1 = K1 { next(s: [9], p: [1/1]) }
MAP_1 ?>> (9, 1/1)

// Assert another simple base case (eq. 50/50)
let MAP_2 = K1 { next(s: [1,2], p: [1/2,1/2]) }
MAP_2 ?>> (1, 1/2)
MAP_2 ?>> (2, 1/2)

// Assert our example test case
let MAP_3 = K1 { next(s: [3,5,7,11], p: [9/18,6/18,2/18,1/18]) }
MAP_3 ?>> ( 3, 9/18)
MAP_3 ?>> ( 5, 6/18)
MAP_3 ?>> ( 7, 2/18)
MAP_3 ?>> (11, 1/18)

// Assert a bit more fine-grained test case
let MAP_4 = K1 { next(s: [5,6,7,8], p: [7/10,2/10,0.99/10,0.01/10]) }
MAP_4 ?>> (5,    7/10)
MAP_4 ?>> (6,    2/10)
MAP_4 ?>> (7, 0.99/10)
MAP_4 ?>> (8, 0.01/10)


//: [Next](@next)
