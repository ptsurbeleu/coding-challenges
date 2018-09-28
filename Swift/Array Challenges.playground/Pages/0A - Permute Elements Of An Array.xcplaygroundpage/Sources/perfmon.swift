import Foundation

/// Applies specified permutation to the sequence using O(n) space - which is 
/// not space-savvy but gurantees corectness of the output results because of 
/// the algorithms simplicity.
///
/// - Parameter lhs: A sequence to apply the permutation to.
/// - Parameter rhs: A permutation to apply to the sequence.
func apply(_ lhs: [Int], _ rhs: [Int]) -> [Int] {
    // Verify arguments are valid according to the specification
    precondition(lhs.count == rhs.count, "Left and right sequences must be of the same length, \(lhs.count) vs. \(rhs.count)")
    // Prepare state of the algorithm
    let size = lhs.count
    // Get ready storage and "exchange" head
    var seq = [Int](repeating: 0, count: size), ix = 0
    // Keep iterating over permutation sequence
    for px in rhs {
        // Query exchange to perform for the current element
        let lpx = lhs[px]
        // Simply copy value from current position to the desired
        seq[ix] = lpx
        // Move on to the next element
        ix += 1
    }
    // Here is the resulting sequence
    return seq
}

/// 1st sequence payload.
public let LHS_1 = [7,2,11,10,4,1,15,3,9,17,18,16,14,5,0,8,6,12,13]
/// 1st permutation payload.
public let RHS_1 = [7,10,14,1,15,9,16,4,0,11,12,18,3,13,5,8,17,2,6]
/// 1st transformation payload.
public let  PRM_1 = apply(LHS_1, RHS_1)

/// 2nd sequence payload.
public let LHS_2 = [14,13,3,23,18,16,20,15,22,8,10,21,7,24,1,0,9,4,6,12,2,11,5,19,17]
/// 2nd permutation payload.
public let RHS_2 = [11,22,15,16,2,9,21,14,13,12,5,18,7,6,10,17,24,1,8,20,0,23,19,3,4]
/// 2nd transformation payload.
public let PRM_2 = apply(LHS_2, RHS_2)

/// 3rd sequence payload.
public let LHS_3 = [8,15,24,28,7,20,1,3,21,6,23,29,16,30,19,9,17,2,11,0,25,27,31,12,4,10,32,26,13,5,18,14,22]
/// 3rd permutation payload.
public let RHS_3 = [20,18,28,22,14,26,4,1,17,9,23,0,7,5,24,29,12,21,3,13,32,19,2,11,25,27,6,16,30,10,15,31,8]
/// 3rd transformation payload.
public let PRM_3 = apply(LHS_3, RHS_3)

/// 4th sequence payload.
public let LHS_4 = [19,15,5,2,6,12,7,20,22,8,0,4,14,1,21,3,16,17,13,9,18,10,11]
/// 4th permutation payload.
public let RHS_4 = [13,16,20,7,1,6,11,9,21,4,5,0,10,19,15,22,2,3,12,18,8,17,14]
/// 4th transformation payload.
public let PRM_4 = apply(LHS_4, RHS_4)

/// 5th sequence payload.
public let LHS_5 = [3,0,2,1,12,11,10,4,9,5,8,7,6]
/// 5th permutation payload.
public let RHS_5 = [0,11,10,4,2,12,5,7,3,1,9,8,6]
/// 5th transformation payload.
public let PRM_5 = apply(LHS_5, RHS_5)

/// 6th sequence payload.
public let LHS_6 = [24,33,41,50,13,39,48,51,37,4,47,2,45,23,31,34,55,7,27,52,46,38,12,30,32,15,54,28,57,49,5,29,44,19,56,35,43,1,21,36,17,11,20,42,0,14,6,8,16,40,53,25,3,10,18,22,9,26]

/// 6th permutation payload.
public let RHS_6 = [32,42,27,55,4,40,8,28,16,44,31,22,29,20,34,6,10,53,33,9,12,45,51,30,50,56,54,25,21,52,24,47,5,26,46,39,23,14,35,11,17,15,0,7,2,13,57,18,41,3,49,19,43,38,37,1,36,48]

/// 6th transformation payload.
public let PRM_6 = apply(LHS_6, RHS_6)

/// 7th sequence payload.
public let LHS_7 = [5,14,13,11,3,10,4,9,8,2,1,7,0,6,12]

/// 7th permutation payload.
public let RHS_7 = [10,11,4,5,7,14,8,13,9,1,2,12,6,0,3]

/// 7th transformation payload.
public let PRM_7 = apply(LHS_7, RHS_7)

/// 8th sequence payload.
public let LHS_8 = [10,8,14,6,12,16,17,0,7,11,9,15,4,3,18,5,1,13,2]

/// 8th permutation payload.
public let RHS_8 = [14,15,10,2,3,6,18,8,7,13,12,4,5,1,0,11,17,16,9]

/// 8th transformation payload.
public let PRM_8 = apply(LHS_8, RHS_8)

/// 9th sequence payload.
public let LHS_9 = [51,28,20,15,90,39,55,56,63,74,4,16,43,88,48,27,82,52,17,21,60,64,32,13,38,33,14,31,40,41,68,36,12,3,18,70,44,8,1,6,53,50,58,75,45,35,42,69,9,54,11,78,10,24,81,65,79,23,72,80,34,71,19,59,89,49,29,7,73,84,25,62,47,61,26,85,22,46,57,2,87,30,0,76,86,83,66,5,37,67,77]

/// 9th permutation payload.
public let RHS_9 = [62,86,38,42,53,89,90,43,3,74,34,82,17,87,70,15,55,9,88,28,75,49,18,4,16,35,11,79,19,2,46,37,24,65,81,7,73,52,84,66,68,0,25,83,6,8,77,54,32,59,57,20,58,47,45,48,64,71,29,56,10,80,22,51,63,30,14,40,13,36,72,78,67,44,69,21,61,60,12,5,41,1,85,23,26,31,50,76,27,39,33]

/// 9th transformation payload.
public let PRM_9 = apply(LHS_9, RHS_9)
