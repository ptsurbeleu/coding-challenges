//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/14
 
 Write a function that takes an array of numbers (eq. a permutation) and returns 
 the next permutation using dictionary ordering rules.
 
 However, if the permutation is the last permutation under the dictionary 
 ordering, your function should return the empty array.
 
 
 EXAMPLE:
 
    Input: p = [6,2,1,5,4,3,0]
 
    Output: [6,2,3,0,1,4,5]
 
 */

/// Computes the next permutation for the given sequence.
///
/// - Parameter p: A sequence of numbers to compute the next permutation for.
func next(p: [Int]) -> [Int] {
    // Evaluate boundaries of the suffix
    let x = edgeOfSuffix(s: p), y = p.count - 1 
    // Seems no more permutations left, hence the empty result
    if x == -1 { return [] }
    // Prepare state of the algorithm
    var perm = p
    // Find the next smallest entry after `x` in the suffix
    // and swap it with the entry in `x` position
    swapNextInSuffix(s: &perm, x: x)
    // Build the smallest suffix possible by sorting it from 
    // the smallest to the largest using reverse - since suffix
    // elements are ordered from the largest to the smallest
    reverse(seq: &perm, x + 1, y)
    // Here is the answer
    return perm
}


// Assert a few example cases
next(p: [0,0,1]) ?>> [0,1,0]
next(p: [0,1,0]) ?>> [1,0,0]
next(p: [0,1,1]) ?>> [1,0,1]
next(p: [1,0,1]) ?>> [1,1,0]
next(p: [6,2,1,5,4,3,0]) ?>> [6,2,3,0,1,4,5]

// Assert a few edge cases
next(p:   [ ]) ?>> []
next(p:   [0]) ?>> []
next(p:   [1]) ?>> []
next(p:   [9]) ?>> []
next(p: [9,0]) ?>> []
next(p: [9,9]) ?>> []

// Assert a few advanced use cases
next(p: INPUT_1) ?>> OUTPUT_1
next(p: INPUT_2) ?>> OUTPUT_2
next(p: INPUT_3) ?>> OUTPUT_3
next(p: INPUT_4) ?>> OUTPUT_4
next(p: INPUT_5) ?>> OUTPUT_5


//: [Next](@next)
