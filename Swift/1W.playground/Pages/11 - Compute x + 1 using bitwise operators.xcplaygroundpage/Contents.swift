//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/08/21/
 
 Write a function that adds 1 to the given number.
 
 
 EXAMPLE:
 
    Input: n = 9
 
    Output: 10
 
 */

/// Adds 1 to the specified number.
///
func ppo(n: Int) -> Int {
    // TODO: Write some code to solve this coding challenge
    fatalError("TODO: Write some code to solve this challenge...")
}


// Assert original use case and few others
ppo(n:  0) ?>>  1
ppo(n:  3) ?>>  4
ppo(n:  9) ?>> 10
ppo(n: -1) ?>>  0
ppo(n: -9) ?>> -8
// That is overflow actually
ppo(n: Int.max) ?>> Int.min

//: [Next](@next)
