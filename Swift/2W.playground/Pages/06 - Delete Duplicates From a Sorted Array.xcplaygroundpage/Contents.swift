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
    // TODO: Write some code to solve this challenge...
    fatalError("TODO: Write some code to solve this challenge...")
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
