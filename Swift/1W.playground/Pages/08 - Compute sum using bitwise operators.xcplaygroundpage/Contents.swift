//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/07/05/
 
 Write a program that computes sum of two signed integers `x` and `y`. Keep in mind your code needs to meet the following constraints:
 
 - use only bitwise operators "<<", ">>", "|", "&", "~" and "^";
 - use assignment operator "=";
 - use equality checks and "boolean" combinations;
 
 
 EXAMPLE
 
    Input: x = 999, y = 1
 
    Output: 1000
 
 */

/// Computes sum of two signed numbers using bitwise operators only.
///
func sum(x: Int, y: Int) -> Int {
    // TODO: Write some code to solve this coding challenge
    fatalError("TODO: Write some code to solve this challenge...")
}


// Assert a few basic use cases
sum(x: 0, y: 0) ?>> 0
sum(x: 0, y: 1) ?>> 1
sum(x: 4, y: 2) ?>> 6

// Assert a few use cases with negative numbers
sum(x: 0, y: -1) ?>> -1
sum(x: 1, y: -1) ?>> 0

// Assert slightly bigger numbers
sum(x: 100, y: 4) ?>>  104
sum(x: 999, y: 1) ?>> 1000

// Assert slightly bigger numbers and -1
sum(x: 999, y: -1) ?>> 998
sum(x: 555, y: -1) ?>> 554

// Assert a few edge cases (eq. arithmetic overflow)
sum(x: Int.max, y: 1)  ?>> Int.min
sum(x: Int.min, y: -1) ?>> Int.max


//: [Next](@next)
