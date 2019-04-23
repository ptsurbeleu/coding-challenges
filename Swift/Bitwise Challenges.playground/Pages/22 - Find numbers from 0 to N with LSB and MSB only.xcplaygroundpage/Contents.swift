//: [Previous](@previous)

/*
 
 Write a function to return numbers within the range from 0 to n, that have only the least significant and the most significant bits set.
 
 
 EXAMPLE:
 
    Input: n = 8
 
    Output: [1, 3, 5] (eq. [0b0001, 0b0011, 0b0101])
 
 */

func findPattern(n: Int) -> [Int] {
    // Prepare state of the algorithm
    var nums = [Int](), x = 1
    // Keep generating numbers within the range
    while n > x {
        // Generate yet another number
        nums.append(x | 1)
        // Move to the bit in the next position
        x <<= 1
    }
    // Here is the answer
    return nums
}

// Assert a few test cases
findPattern(n:  0) == []
findPattern(n:  2) == [1]
findPattern(n:  4) == [1, 3]
findPattern(n:  8) == [1, 3, 5]
findPattern(n: 10) == [1, 3, 5, 9]
findPattern(n: 20) == [1, 3, 5, 9, 17]

//: [Next](@next)