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
    // Prepare state of the algorithm
    var map: [Int:Int] = [:]
    // Process each element of the subset
    for ix in 0...k - 1 {
        // Select next random element in {ix...n}
        let rx = Int.random(in: ix...n)
        // Query for existing keys in the map
        let ixv = map[ix], rxv = map[rx]
        // Insert or update `ix ~> rxv/rx` mapping pair
        map[ix] = rxv ?? rx
        // Insert or update `rx ~> ixv/ix` mapping pair
        map[rx] = ixv ?? ix
    }
    // Prepare an array to copy the resulting subset
    var seq = [Int](repeating: 0, count: k)
    // Query & copy each element of the subset in the map
    for i in 0...k - 1 { seq[i] = map[i]! }
    // Here is the answer
    return seq
}


// Assert a few single digit use cases
subset(n: 9, k: 5)
subset(n: 9, k: 5)
subset(n: 9, k: 5)
subset(n: 9, k: 5)

// Assert a few two digits use cases
subset(n: 99, k: 5)
subset(n: 99, k: 5)
subset(n: 99, k: 5)
subset(n: 99, k: 5)

// Assert a few three digits use cases
subset(n: 999, k: 5)
subset(n: 999, k: 5)
subset(n: 999, k: 5)
subset(n: 999, k: 5)


//: [Next](@next)
