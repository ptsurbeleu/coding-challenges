//: [Previous](@previous)

/*

 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/17/

 Write a functon that returns true if two numbers have opposite signs and return false otherwise.


 EXAMPLE:

    Input: x = -1, y = 0

    Output: true


 EXAMPLE:

    Input: x = -11, y = -99

    Output: false

 */

func opposite(x: Int, y: Int) -> Bool {
    // Prepare bit mask of the sign bit
    let sign = 1 << 63
    // Compare signs of both numbers using bit mask
    return x & sign != y & sign
}

// Assert original use cases
opposite(x:  -1, y:   0) == true
opposite(x: -11, y: -99) == false

// Assert a few use cases of simple numbers
opposite(x:  0, y:  0) == false
opposite(x:  1, y:  1) == false
opposite(x: -1, y:  0) == true
opposite(x: -1, y: -1) == false

// Assert a few edge cases of Int's max and min
opposite(x: Int.min, y: Int.max) == true
opposite(x: Int.max, y: Int.min) == true
opposite(x: Int.min, y: Int.min) == false
opposite(x: Int.max, y: Int.max) == false

//: [Next](@next)
