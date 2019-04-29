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
    // TODO: Write some code to solve this coding challenge
    fatalError("TODO: Write some code to solve this challenge...")
}


// Assert a few positive base cases
find(nums: [0,0,0,1]) ?>> 1
find(nums: [1,1,1,0]) ?>> 0

// Assert a few negative base cases
find(nums: [0,0,0,-1])   ?>> -1
find(nums: [-1,-1,-1,0]) ?>> 0

// Assert our original use cases
find(nums: [1,2,1,1]) ?>> 2
find(nums: [-1,-1,-1,-2]) ?>> -2

// Assert inputs with more elements
find(nums: [1,2,3,1,2,3,1,2,3,5]) ?>> 5
find(nums: [90,91,90,91,90,91,93]) ?>> 93
find(nums: [1024,1025,1024,1025,1024,1025,2048]) ?>> 2048

//: [Next](@next)
