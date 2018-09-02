//: [Previous](@previous)

/*
 
 Find 100% human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/09
 
 Write a function to find the number that appears only once in the given array, while other numbers in the array appear three times. Keep in nimber that your code should work with negative numbers as well.
 
 
 EXAMPLE:
 
    Input: nums = [1,2,1,1]
 
    Output: 2
 
 
 EXAMPLE:
 
    Input: nums = [-1,-1,-1,-2]
 
    Output: -2
 
 */


func find(nums: [Int]) -> Int {
    // Prepare state of the algorithm

    // Evaluate every number in the array

        // Make a copy of bits that exist in both duplicates, unique
        // and the number being evaluated - to keep track of duplicates

        // Copy bits exclusively between unique and the number evaluated
        // However, note that 2 ^ 1 == 3 and we need recover from this

        // Mask includes the bits common between duplicates and unique,
        // that is to recover from XOR's side effect used above...
        // eq. 3 & 1 == 1 and ~1 == 1110

        // Apply the mask to recover from XOR's side effect leaving
        // only unique bits, eq. 3 & 1110 == 2

        // Again, apply the mask and put the variable into
        // its initial state (0), eq. 1 & 1110 == 0


    // Finally, here is our answer after evaluating all numbers

}


// Assert a few positive base cases
find(nums: [0,0,0,1]) == 1
find(nums: [1,1,1,0]) == 0

// Assert a few negative base cases
find(nums: [0,0,0,-1])   == -1
find(nums: [-1,-1,-1,0]) == 0

// Assert our original use cases
find(nums: [1,2,1,1]) == 2
find(nums: [-1,-1,-1,-2]) == -2

// Assert inputs with more elements
find(nums: [1,2,3,1,2,3,1,2,3,5]) == 5
find(nums: [90,91,90,91,90,91,93]) == 93
find(nums: [1024,1025,1024,1025,1024,1025,2048]) == 2048

//: [Next](@next)
