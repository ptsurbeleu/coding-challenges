//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/04/
 
 Write a function that takes an array `n` and an index `i`, and sorts the elements so that all elements less than `n[i]` (the `sortBy`) appears first, followed by elements equal to the `sortBy`, followed by the elements greater than `sortBy`.
 
 
 EXAMPLE:
 
    Input: n = [1,2,3,1,2,3]; i = 4
 
    Output: [1,1,2,2,3,3]
 
 */

/// The Dutch flag sorting tecnhique.
///
func sort(n: [Int], i: Int) -> [Int] {
    // TODO: Write some code to solve it...
    fatalError("TODO: Write some code to solve this challenge...")
}


// Assert a few test cases
sort(n: [1,2,3,1,2,3],    i: 4) ?>> [1,1,2,2,3,3]
sort(n: [0,1,0,1,0,1],    i: 2) ?>> [0,0,0,1,1,1]
sort(n: [-1,0,-1,0,-1,0], i: 1) ?>> [-1,-1,-1,0,0,0]

//: [Next](@next)
