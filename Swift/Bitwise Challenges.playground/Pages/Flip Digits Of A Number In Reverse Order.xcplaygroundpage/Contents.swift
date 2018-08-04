//: [Previous](@previous)

/*

 Find 100% human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/04

 Write a function to flip digits of the specified number in reverse order and return the result. Keep in mind that your code should support negative numbers as well.


 EXAMPLE:

    Input: x = 18

    Output: 81


 EXAMPLE:

    Input: x = -991

    Output: -199

 */

func flip(x: Int) -> Int {
    // Prepare state of the algorithm
    var output = 0, xx = x
    // Iterate while there are digits to work with
    while xx != 0 {
        // Shift current value to the next decimal place
        output = output * 10
        // Extract another digit from the original number
        output += xx % 10
        // Remove processed digit from the original number
        xx /= 10
    }
    // Here is our answer
    return output
}

// Assert a few original test cases
flip(x:   18) ==   81
flip(x: -991) == -199

// Assert a few positive edge cases
flip(x:    0) ==    0
flip(x:    1) ==    1
flip(x:   10) ==   01
flip(x:  100) ==  001
flip(x: 1111) == 1111

// Assert a few negative edge cases
flip(x:    -0) ==    -0
flip(x:    -1) ==    -1
flip(x:   -10) ==   -01
flip(x:  -100) ==  -001
flip(x: -1111) == -1111

// Assert a few large numbers edge cases
// 9223372036854775807 ~> 7085774586302733229
flip(x: Int.max) == 7085774586302733229
// -9223372036854775808 ~> -8085774586302733229
flip(x: Int.min) == -8085774586302733229

//: [Next](@next)
