//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/09
 
 Write a function that removes duplicates from a sorted array, compacts the remaining elements and fills empty spaces with 0s.
 
 
 EXAMPLE:
 
    Input: n = [2,3,3,4,5,5]
 
    Output: [2,3,4,5,0,0]
 */

/// Removes duplicates from a sorted array, compacts remaning elements and fills empty spaces with 0s.
///
/// - Parameter n: A sorted array to remove duplicates from.
func rm(n: [Int]) -> [Int] {
    // Prepare state of the algorithm
    var seq = n, write = 0, key = 0
    // Keep processing unless reading head is out of bounds
    for read in 0..<n.count {
        // Match reading head with the key from the last iteration 
        if seq[read] == key {
            // Set to 0 value of the head's element 
            // and skip to the next processing cycle
            seq[read] = 0; continue
        }
        // Re-discover the key used as a marker to find duplicates
        key = seq[read]
        // Mismatch between writing & reading heads is a signal to swap
        if write != read { swap(&seq, write, read) }
        // Move both writing & reading heads to their next elements
        write += 1
    }
    // Here is the answer
    return seq
}


// Assert a few edge use cases
rm(n: [   ]) ?>> [ ]
rm(n: [  2]) ?>> [2]
rm(n: [0,0]) ?>> [0,0]
rm(n: [2,0]) ?>> [2,0]

// Assert a few simple use cases
rm(n: [2,0,0]) ?>> [2,0,0]
rm(n: [2,0,0]) ?>> [2,0,0]
rm(n: [2,0,0]) ?>> [2,0,0]

// Assert a few larger use cases
rm(n: [2,2,2,2,2,2]) ?>> [2,0,0,0,0,0]
rm(n: [2,3,3,4,5,5]) ?>> [2,3,4,5,0,0]
rm(n: [5,5,6,6,7,8]) ?>> [5,6,7,8,0,0]

// Assert a few even larger use cases
rm(n: [2,3,5,5,7,11,11,11,13]) ?>> [2,3,5,7,11,13,0,0,0]
rm(n: [8,8,9,9,9,14,15,17,17]) ?>> [8,9,14,15,17,0,0,0,0]


//: [Next](@next)
