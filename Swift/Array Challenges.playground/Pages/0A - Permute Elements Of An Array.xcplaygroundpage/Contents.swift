//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/13
 
 Write a function that given two array arguments `s` and `p`, returns array `s` with rearranged elements according to indexes specified in the array `p`.
 
 
 EXAMPLE:
 
    Input: s = [9,8,7,6,5], p = [1,4,0,2,3]

    Output: [8,5,9,7,6]

 */

/// Applies specified permutation to the given sequence of numbers and returns the result.
///
/// - Parameter s: A sequence of numbers to apply the permutation to.
/// - Parameter p: A permutation to apply to the sequence of numbers.
func apply(s: [Int], p: [Int]) -> [Int] {
    // Validate input arguments
    precondition(s.count == p.count, "Arguments must have equal length")
    // Query size of the sequence
    let size = s.count
    // Prepare state of the algorithm
    var seq = s, perm = p
    // Loop thru all elements of the sequence
    for i in 0..<size {
        // Make a copy of the current element's position
        var lhs = i
        // Exchange current element unless it has been exchanged
        while perm[lhs] != -1 {
            // Get 2nd part of the exchange and value at the destination 
            let rhs = perm[lhs], rxs = perm[rhs]
            // Looks like the exchange was done earlier, thus stop
            if rxs == -1 { break }
            // Perform exchange operation in the specified positions
            swap(&seq, lhs, rhs)
            // Mark the left part of current exchange as completed
            perm[lhs] = -1
            // Let the exchange to keep going further (eq. chain)
            lhs = rhs
        }
    }
    // Here is the answer
    return seq
}


// Assert a few test cases
apply(s: [9,8,7,6,5], p: [1,4,0,2,3]) ?>> [8,5,9,7,6]
apply(s: [5,4,3,2,1], p: [4,3,2,1,0]) ?>> [1,2,3,4,5]
apply(s: [5,4,3,2,1], p: [4,3,2,0,1]) ?>> [1,2,3,5,4]
apply(s: [5,4,3,2,1], p: [4,3,0,2,1]) ?>> [1,2,5,3,4]
apply(s: [5,4,3,2,1], p: [4,0,3,2,1]) ?>> [1,5,2,3,4]
apply(s: [5,4,3,2,1], p: [0,4,3,2,1]) ?>> [5,1,2,3,4]
apply(s: [5,4,3,2,1], p: [0,1,2,3,4]) ?>> [5,4,3,2,1]

// Assert
apply(s: [9,8,7,6,5,4,3,2,1,0], p: [4,3,2,1,0,9,8,7,6,5]) ?>> [5,6,7,8,9,0,1,2,3,4]
apply(s: [9,8,7,6,5,4,3,2,1,0], p: [9,1,2,3,4,5,6,7,8,0]) ?>> [0,8,7,6,5,4,3,2,1,9]
apply(s: [9,8,7,6,5,4,3,2,1,0], p: [8,1,2,3,4,5,6,7,0,9]) ?>> [1,8,7,6,5,4,3,2,9,0]

// Assert a few more advanced use cases
apply(s: LHS_1, p: RHS_1) ?>> PRM_1
apply(s: LHS_2, p: RHS_2) ?>> PRM_2
apply(s: LHS_3, p: RHS_3) ?>> PRM_3
apply(s: LHS_4, p: RHS_4) ?>> PRM_4
apply(s: LHS_5, p: RHS_5) ?>> PRM_5
apply(s: LHS_6, p: RHS_6) ?>> PRM_6
apply(s: LHS_7, p: RHS_7) ?>> PRM_7
apply(s: LHS_8, p: RHS_8) ?>> PRM_8
apply(s: LHS_9, p: RHS_9) ?>> PRM_9


//: [Next](@next)
