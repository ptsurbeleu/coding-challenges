//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/17
 
 Write a function that generates a uniformly random permutation of `{0 ... n - 1}` and returns its subset of the specified size `k`. You are given a random number generator that returns integers in the set `{0 ... n - 1}` with equal probability, try to use as few calls to the generator as possible.
 
 
 EXAMPLE:
 
    Input: n = 19, k = 5
 
    Output: [14, 7, 13, 6, 9]
 
 */

/// Computes a random permutation in the given range and returns a subset of the specifed size.
///
/// - Parameter n: A number representing the end of the range.
/// - Parameter k: A size of the generated permutation.
func random(n: Int, k: Int) -> [Int] {
    // Prepare state of the algorithm
    var seq = (0...n - 1).sorted(), perm = [Int](repeating: 0, count: k)
    // Select at most k elements to output
    for lhs in 0..<k {
        // Pick the next exchange using random generator
        let x = Int.random(in: lhs...n - 1)
        // Exchange elements
        swap(&seq, lhs, x)
        // Copy result of the exchange into the output
        perm[lhs] = seq[lhs]
    }
    // Here is the answer
    return perm
}


// Assert a few test cases between 0...99
random(n:  99, k: 6)
random(n:  99, k: 6)
random(n:  99, k: 6)
random(n:  99, k: 6)
random(n:  99, k: 6)

// Assert a few test cases between 0...999
random(n: 999, k: 6)
random(n: 999, k: 6)
random(n: 999, k: 6)
random(n: 999, k: 6)
random(n: 999, k: 6)


//: [Next](@next)
