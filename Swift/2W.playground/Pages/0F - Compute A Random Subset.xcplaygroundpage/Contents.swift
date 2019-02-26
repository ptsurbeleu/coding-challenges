//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/18
 
 Write a function that takes a positive numbers `n` and `k`, eq. upper bound, size and returns an array, eq. a subset of randomly chosen numbers in `0...n` of size `k`.
 
 All subsets should be equally likely and, in addition, all permutations of numbers of the array should be equally likely.
 
 
 EXAMPLE:
 
     Input: n = 9, k = 5
     
     Output: [1, 4, 5, 0, 6]
 
 */

/// Generates a random subset within {0...n} range.
///
/// - Parameter n: An upper bound of the range to compute subset from.
/// - Parameter k: A size of the subset.
func subset(n: Int, k: Int) -> [Int] {
    // TODO: Write some code to solve this challenge...
    fatalError("TODO: Write some code to solve this challenge...")
}


// Assert a few single digit use cases
subset(n: 9, k: 5) ?>> UNIQUE_ELEMENTS
subset(n: 9, k: 5) ?>> UNIQUE_ELEMENTS
subset(n: 9, k: 5) ?>> UNIQUE_ELEMENTS
subset(n: 9, k: 5) ?>> UNIQUE_ELEMENTS

// Assert a few two digits use cases
subset(n: 99, k: 5) ?>> UNIQUE_ELEMENTS
subset(n: 99, k: 5) ?>> UNIQUE_ELEMENTS
subset(n: 99, k: 5) ?>> UNIQUE_ELEMENTS
subset(n: 99, k: 5) ?>> UNIQUE_ELEMENTS

// Assert a few three digits use cases
subset(n: 999, k: 5) ?>> UNIQUE_ELEMENTS
subset(n: 999, k: 5) ?>> UNIQUE_ELEMENTS
subset(n: 999, k: 5) ?>> UNIQUE_ELEMENTS
subset(n: 999, k: 5) ?>> UNIQUE_ELEMENTS


//: [Next](@next)
