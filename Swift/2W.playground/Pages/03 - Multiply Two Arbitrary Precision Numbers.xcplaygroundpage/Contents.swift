//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/06
 
 Write a function to multiply two arbitrary precision numbers each represented by an array of digits (from 0 to 9).
 
 
 EXAMPLE:
 
    Input: x = [1,8], y = [1,0]
 
    Output: [1,8,0]
 
 EXAMPLE:
 
    Input: x = [-1,0], y = [1,0]
 
    Output: [-1,0,0]
 
 */

func sxs(x: [Int], y: [Int]) -> [Int] {
    // TODO: Write some code to solve this challenge...
    fatalError("TODO: Write some code to solve this challenge...")
}


// Assert a few smaller +/+ use cases
sxs(x:   [0], y:   [0]) ?>> [0]
sxs(x:   [1], y:   [1]) ?>> [1]
sxs(x:   [1], y:   [9]) ?>> [9]
sxs(x:   [9], y:   [1]) ?>> [9]
sxs(x:   [8], y:   [7]) ?>> [5,6]
sxs(x:   [9], y:   [9]) ?>> [8,1]
sxs(x: [1,0], y: [1,0]) ?>> [1,0,0]
sxs(x: [9,9], y: [9,9]) ?>> [9,8,0,1]

// Assert a few larger +/+ use cases
sxs(x:   [2], y: [5,0,0,0]) ?>> [1,0,0,0,0]
sxs(x:   [5], y: [5,0,0,0]) ?>> [2,5,0,0,0]
sxs(x: [2,0], y: [5,0,0,0]) ?>> [1,0,0,0,0,0]
sxs(x: [5,0], y: [5,0,0,0]) ?>> [2,5,0,0,0,0]

// Assert a few smaller +/- use cases
sxs(x:   [0], y:   [-1]) ?>> [0]
sxs(x:   [1], y:   [-1]) ?>> [-1]
sxs(x:   [9], y:   [-1]) ?>> [-9]
sxs(x:   [9], y:   [-1]) ?>> [-9]
sxs(x: [1,0], y: [-1,0]) ?>> [-1,0,0]
sxs(x: [2,0], y: [-2,0]) ?>> [-4,0,0]
sxs(x: [9,9], y: [-9,9]) ?>> [-9,8,0,1]

// Assert a few smaller -/- use cases
sxs(x:   [-1], y:   [-1]) ?>> [1]
sxs(x:   [-1], y:   [-9]) ?>> [9]
sxs(x:   [-9], y:   [-1]) ?>> [9]
sxs(x:   [-8], y:   [-7]) ?>> [5,6]
sxs(x:   [-9], y:   [-9]) ?>> [8,1]
sxs(x: [-1,0], y: [-1,0]) ?>> [1,0,0]
sxs(x: [-9,9], y: [-9,9]) ?>> [9,8,0,1]


//: [Next](@next)
