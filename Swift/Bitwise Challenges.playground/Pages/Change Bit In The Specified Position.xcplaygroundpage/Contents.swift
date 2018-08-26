//: [Previous](@previous)

/*

 Write a function to change a bit in the specified position with the given value.


 EXAMPLE:

    Input: n = 0b1100_1010, i = 3, v = 0

    Output: 0b1100_0010

 */

func set(_ n: Int, _ i: Int, _ v: Int) -> Int {
    // Prepare a mask to clear bit in i-th position 
    let m = ~(1 << i)
    // Clear bit using mask and change it to the specified value
    return (n & m) | (v << i)
}

// Assert a few test cases
set(0b1111_1111, 0, 0) == 0b1111_1110
set(0b1111_1111, 0, 1) == 0b1111_1111
set(0b1100_1010, 3, 0) == 0b1100_0010
set(0b1100_1010, 4, 1) == 0b1101_1010
set(0b1111_1111, 6, 1) == 0b1111_1111
set(0b1111_1111, 6, 0) == 0b1011_1111
set(0b0000_0000, 7, 0) == 0b0000_0000
set(0b0000_0000, 7, 1) == 0b1000_0000

//: [Next](@next)
