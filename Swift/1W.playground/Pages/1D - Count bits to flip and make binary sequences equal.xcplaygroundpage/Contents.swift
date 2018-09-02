//: [Previous](@previous)

/*
 
 Write a function that given three binary string sequences `x` `y` and `z`, counts the minimal number of bits required to flip in `x` and `y`, so that `x ^ y` equals to `z`.   
 
 
 EXAMPLE:
 
    Input: x = "1000", y = "0001", z = "0000"
 
    Output: 2
 
 */


func flips(_ x: String, _ y: String, _ z: String) -> Int {
    // Prepare a few shorthands to keep it readable

    // Safe-guard from invalid input

        // Signal to the user runtime error

    // Prepare our counter

    // Loop thru indices of the first sequence

        // Compare characters in sequences, much like XOR

            // One more bit to flip


            // Yet another bit to flip



    // Here is the answer

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
