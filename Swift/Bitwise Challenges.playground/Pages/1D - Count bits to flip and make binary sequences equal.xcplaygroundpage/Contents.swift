//: [Previous](@previous)

/*
 
 Write a function that given three binary string sequences `x` `y` and `z`, counts the minimal number of bits required to flip in `x` and `y`, so that `x ^ y` equals to `z`.   
 
 
 EXAMPLE:
 
    Input: x = "1000", y = "0001", z = "0000"
 
    Output: 2
 
 */

func flips(_ x: String, _ y: String, _ z: String) -> Int {
    // Prepare a few shorthands to keep it readable
    let xc = x.characters, yc = y.characters, zc = z.characters
    // Safe-guard from invalid input
    if xc.count != yc.count || xc.count != zc.count {
        // Signal to the user runtime error
        fatalError("All three sequences must have the same length")
    }
    // Prepare our counter
    var count = 0
    // Loop thru indices of the first sequence
    for i in xc.indices {
        // Compare characters in sequences, much like XOR
        if xc[i] == yc[i] && zc[i] == "1" {
            // One more bit to flip
            count += 1
        } else if xc[i] != yc[i] && zc[i]  == "0" {
            // Yet another bit to flip
            count += 1
        }
    }
    // Here is the answer
    return count
}

// Assert a few test cases
flips("1010", "0010", "1001") == bits(0b1010 ^ 0b0010 ^ 0b1001)
flips("1000", "0001", "0000") == bits(0b1000 ^ 0b0001 ^ 0b0000)
flips("0000", "0000", "0000") == bits(0b0000 ^ 0b0000 ^ 0b0000)
flips("0001", "0001", "0001") == bits(0b0001 ^ 0b0001 ^ 0b0001)
flips("1001", "1001", "1001") == bits(0b1001 ^ 0b1001 ^ 0b1001)
flips("1001", "1001", "0001") == bits(0b1001 ^ 0b1001 ^ 0b0001)
flips("1111", "1011", "1101") == bits(0b1111 ^ 0b1011 ^ 0b1101)
flips("1111", "1111", "1111") == bits(0b1111 ^ 0b1111 ^ 0b1111)

//: [Next](@next)
