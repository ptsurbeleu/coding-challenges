//: [Previous](@previous)

/*

 Write a function that returns `true` if all bits are set to 1 in the binary representation of a given number. Otherwise your function returns `false`.

 Keep in mind your function needs to meet the following constraints:

    - when n is 0, your function returns `false`;


 EXAMPLE:

    Input: n = 0b0111

    Output: true

 */

func allBitsSet(n: Int) -> Bool {
    // Safe-guard from 0
    if n == 0 { return false }
    // See if n + 1 is a power of 2 or not
    return n & (n + 1) == 0
}

// Assert a few positive test cases
allBitsSet(n: 0b0001) == true // true
allBitsSet(n: 0b0011) == true // true
allBitsSet(n: 0b0111) == true // true
allBitsSet(n: 0b1111) == true // true
allBitsSet(n: 0x00ff) == true // true
allBitsSet(n: 0x0fff) == true // true
allBitsSet(n: 0xffff) == true // true

// Assert a few negative test cases
allBitsSet(n: 0b0000) == false // true
allBitsSet(n: 0b0101) == false // true
allBitsSet(n: 0b1001) == false // true
allBitsSet(n: 0b1000) == false // true
allBitsSet(n: 0xff0f) == false // true
allBitsSet(n: 0xfff0) == false // true
allBitsSet(n: 0xfff7) == false // true

//: [Next](@next)