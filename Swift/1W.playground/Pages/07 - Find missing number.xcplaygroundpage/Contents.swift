//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/07/02/
 
 An array contains all the binary integers ("BInt") from 0 through m, except for one number which is missing. Since elements of the array are represented using "BInt" type, "bit" is the only method you can use to access individual bits of an element in the array.
 
 Don't worry about "BInt"'s performance, calling "bit" method takes O(1) time.
 
 Write a function to find what number is missing.
 
 
 EXAMPLE
 
    Input: array = [0, 1, 3, 4, 5, 6, 7, 8, 9, 10]
 
    Output: 2
 
 */

/// Finds the first missing number in 0...m sequence of numbers. When sequence is valid, it returns m + 1 number. When sequence has multiple numbers missing, returns the first one that is missing.
///
/// - Parameter array: An array of binary integers.
/// - Parameter position: Current bit position to perform find operation.
func find(array: [BInt], position: Int = 0) -> UInt {
    // TODO: Write some code to solve this coding challenge
    fatalError("TODO: Write some code to solve this challenge...")
}


// Assert 1 is missing
find(array: BInt.from(0, 2, 3, 4, 5, 6, 7, 8, 9, 10)) ?>> 1
// Assert 2 is missing
find(array: BInt.from(0, 1, 3, 4, 5, 6, 7, 8, 9, 10)) ?>> 2
// Assert 3 is missing
find(array: BInt.from(0, 1, 2, 4, 5, 6, 7, 8, 9, 10)) ?>> 3
// Assert 4 is missing
find(array: BInt.from(0, 1, 2, 3, 5, 6, 7, 8, 9, 10)) ?>> 4
// Assert 5 is missing
find(array: BInt.from(0, 1, 2, 3, 4, 6, 7, 8, 9, 10)) ?>> 5
// Assert 6 is missing
find(array: BInt.from(0, 1, 2, 3, 4, 5, 7, 8, 9, 10)) ?>> 6
// Assert 7 is missing
find(array: BInt.from(0, 1, 2, 3, 4, 5, 6, 8, 9, 10)) ?>> 7
// Assert 8 is missing
find(array: BInt.from(0, 1, 2, 3, 4, 5, 6, 7, 9, 10)) ?>> 8
// Assert 9 is missing
find(array: BInt.from(0, 1, 2, 3, 4, 5, 6, 7, 8, 10)) ?>> 9


//: [Next](@next)
