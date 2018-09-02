//: [Previous](@previous)

/*
 
 Write a function that returns `true` if all bits are set to 1 in the binary representation of a given number. Otherwise your function returns `false`.
 
 Keep in mind your function needs to meet the following constraints:
 
    - when n is 0, your function returns `false`;
 
 
 EXAMPLE:
 
    Input: n = 0b0111
 
    Output: true
 
 */

// * * * 

func allBitsSet(n: Int) -> Bool {
    // Safe-guard from 0

    // See if n + 1 is a power of 2 or not

}


// Assert a few positive test cases
allBitsSet(n: 0b0001) == true // true
allBitsSet(n: 0b0011) == true // true
allBitsSet(n: 0b0111) == true // true
allBitsSet(n: 0b1111) == true // true
allBitsSet(n: 0x00ff) == true // true
allBitsSet(n: 0x0fff) == true // true
allBitsSet(n: 0xffff) == true // true

//: [Next](@next)
