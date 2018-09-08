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
    // Prepare state of the algorithm
    var nn = [Int](repeating: 0, count: x.count + y.count)
    // Enumerate thru the first number's digits (right-to-left)
    for i in (0..<x.count).reversed() {
        // Enumerate thru the second number's digits (right-to-left)
        for j in (0..<y.count).reversed() {
            // Find relative positions of the digits in the output array
            let ppx = i + j, ppn = ppx + 1 
            // Calculate total in the current position
            nn[ppn] += abs(x[i]) * abs(y[j])
            // Calculate carry in the carry over position
            nn[ppx] += nn[ppn] / 10
            // Calculate ones in the current position
            nn[ppn] %= 10
        }
    }
    // Remove leading zeros (if any) but leave the only one alone
    while nn[0] == 0 && nn.count > 1 {
        // The first zero always goes away
        nn.remove(at: 0)
    }
    // Flip the sign in the output array (if that's the case)
    if opsign(x[0], y[0]) { nn[0] *= -1 }
    // Here is the answer
    return nn
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
