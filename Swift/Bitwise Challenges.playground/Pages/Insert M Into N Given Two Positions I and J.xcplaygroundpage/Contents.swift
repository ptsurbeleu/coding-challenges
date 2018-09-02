//: [Previous](@previous)

/*:
 
 Find a human-friendly explanation into this coding challenge at http://pabloduo.com/2018/05/23/
 
 You are given two 32-bit numbers, n and m, and two bit positions, i and j. 
 Write a metod to insert m into n such that m starts at bit j and ends at 
 bit i. You can assume that the bits i...j have enough space to fit all of m. 
 That is, if m = 0b1_0011, you can assume that there are at least 5 bits between 
 i and j.
 
 You would not, for example, have i = 2 and j = 3, because m could not fully 
 fit between bit 2 and bit 3.


 EXAMPLE
 
    Input: n = 0b01000_11111_00, m = 0b10011, i = 2, j = 6
 
    Output: 0b01000_10011_00

 */


// Inserts bits of (m) into (n) using two bit positions i and j
func insert(n: Int, m: Int, i: Int, j: Int) -> Int {
    // Compute initial bits of the mask
    let y = (1 << j) - 1
    // Shift and invert initial bits to create mask
    let mask = ~(y << i)
    // Apply mask to clear n's bits
    let n_masked = n & mask
    // Shift m's bits into i-th position, as requested
    let m_shifted = m << i
    // OR masked bits of n and shifted bits of m to get an answer
    return n_masked | m_shifted
}


// Assert a few very basic use cases
insert(n: 0b1001, m: 0b1, i: 1, j: 1) == 0b1011
insert(n: 0b1001, m: 0b0, i: 0, j: 1) == 0b1000

// Assert a few other use cases of not so lengthy numbers
insert(n: 0b1100_0000, m: 0b101, i: 1, j: 3) == 0b1100_1010
insert(n: 0b1100_0000, m: 0b011, i: 1, j: 2) == 0b1100_0110

// Assert a few use cases of lengthy numbers
insert(n: 0b01000_00000_00, m: 0b10011, i: 2, j: 6) == 0b01000_10011_00
insert(n: 0b01000_11111_00, m: 0b10011, i: 2, j: 6) == 0b01000_10011_00

//: [Next](@next)
