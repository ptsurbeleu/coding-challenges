//: [Previous](@previous)

/*

 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/09

 Write a function that takes a sequence of numbers (eq. an array) and a key (a number), rearranges the sequence such that all occurences of the key are removed while the remaining numbers in the sequence shifted to the left to fill the emptied spaces (eq. compacted) and returns an update sequence alongside with the number of elements remaining.

 All empty spaces in the sequence on the right side should be filled with 0s.


 EXAMPLE:

    Input: n = [4,6,4,8,1], x = 4

    Output: (3, [6,8,1,0,0])

 */

/// Returns a tuple value, such as the first field is number of elements remaining
/// and second field is the updated sequence.
///
/// - Parameter n: A sequence of numbers to process.
/// - Parameter key: A key to remove from the sequence.
func rm(n: [Int], key: Int) -> (Int, [Int]) {
    // Prepare state of the algorithm
    var seq = n, remaining = 0, write = 0, read = 0
    // Keep processing unless reading head is out of bounds
    while read < n.count {
        // Match reading head with the key to remove
        if seq[read] == key {
            // Set to 0 value of the reading head's element
            seq[read] = 0
            // Move reading head to the next element
            read += 1
            // Skip to the next processing cycle
            continue
        }
        // Mismatch between writing & reading heads is a signal to swap
        if write != read { swap(&seq, write, read) }
        // Move both writing & reading heads to the next element
        read += 1; write += 1
        // Update count of the elements remaining in the sequence
        remaining += 1
    }
    // Here is the answer
    return (x: remaining, y: seq)
}


// Assert a few use cases
rm(n: [4,6,4,8,1], key: 1) ?>> (4, [4,6,4,8,0])
rm(n: [4,6,4,8,1], key: 4) ?>> (3, [6,8,1,0,0])
rm(n: [4,6,4,8,1], key: 8) ?>> (4, [4,6,4,1,0])
rm(n: [2,5,2,5,0], key: 5) ?>> (3, [2,2,0,0,0])
rm(n: [9,9,9,9,9], key: 9) ?>> (0, [0,0,0,0,0])
rm(n: [0,0,0,0,0], key: 0) ?>> (0, [0,0,0,0,0])

rm(n: [11,18,35,40,11], key: 11) ?>> (3, [18,35,40, 0, 0])
rm(n: [23,17,88,17,52], key: 17) ?>> (3, [23,88,52, 0, 0])
rm(n: [88,99,77,55,44], key: 13) ?>> (5, [88,99,77,55,44])
rm(n: [88,99,77,55,44], key: 13) ?>> (5, [88,99,77,55,44])


//: [Next](@next)
