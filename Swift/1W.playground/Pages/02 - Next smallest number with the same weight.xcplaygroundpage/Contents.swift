//: [Previous](@previous)

/*
 
 Find 100% human-friendly explanation of this coding challenge at http://pabloduo.com/2018/06/26/
 
 * Lets define "the weight" of a nonnegative integer x to be the number of bits that are set to 1 in its binary representation.
 
 Given a positive integer, print the next smallest number that have the same weight. If you cannot find the answer for the given integer, return -1.
 
 
 EXAMPLE
 
    Input: num = 0b11_0110_0111_1100 (13948)
 
    Output:      0b11_0110_0111_1010 (13946)
                                ^^^
 */


func nextSmallest(n: Int) -> Int {
    // TODO: Write some code to solve this coding challenge
    fatalError("TODO: Write some code to solve this challenge...")
}


// Assert a few very basic use cases
nextSmallest(n: 0b0010) ?>> 0b0001
nextSmallest(n: 0b0101) ?>> 0b0011
nextSmallest(n: 0b1001) ?>> 0b0110
nextSmallest(n: 0b1000) ?>> 0b0100

// Assert a few edge use cases
nextSmallest(n:   0)     ?>> -1
nextSmallest(n:  -1)     ?>> -1
nextSmallest(n: -11)     ?>> -1
nextSmallest(n: Int.min) ?>> -1

// Assert slightly more involved use cases
nextSmallest(n: 0b0010_0111_1000_0011) ?>> 0b0010_0111_0111_0000
nextSmallest(n: 0b0010_0111_1001_0011) ?>> 0b0010_0111_1000_1110
nextSmallest(n: 0b0010_0110_1000_0010) ?>> 0b0010_0110_1000_0001
nextSmallest(n: 0b0010_0000_0000_0001) ?>> 0b0001_1000_0000_0000
nextSmallest(n: 0b0011_0110_0111_1100) ?>> 0b0011_0110_0111_1010

//: [Next](@next)
