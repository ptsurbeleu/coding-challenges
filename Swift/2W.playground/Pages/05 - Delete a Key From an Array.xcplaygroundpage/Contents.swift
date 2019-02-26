//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/08
 
 Write a function that takes a sequence of numbers (eq. an array) and a key (a number), rearranges the sequence such that all occurences of the key are removed while the remaining numbers in the sequence shifted to the left to fill the emptied spaces and returns an update sequence alongside with the number of elements remaining. All empty spaces in the sequence on the right side should be filled with 0s.
 
 
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
    // TODO: Write some code to solve this challenge...
    fatalError("TODO: Write some code to solve this challenge...")
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
