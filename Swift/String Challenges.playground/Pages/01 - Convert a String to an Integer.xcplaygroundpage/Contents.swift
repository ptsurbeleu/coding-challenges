/*:
 
 ## 01 - Convert a String to an Integer
 
 A string is a sequence of characters. A string may encode and integer, e.q. "123" encodes 123. In this problem, you are to implement a method that takes a string representing an integer and returns the corresponding integer. Your code should handle negative integers. You cannot use functions from the standard library.
 
 _HINT: Build the result one digit at a time._
 

    Input: s = "123"
 
    Output: 123

 What you see on the picture below is known as US-ASCII (_aka. ASCII_) character encoding that describes typographical symbols predominantly used in the United States:
 
  ![US-ASCII character encoding table](ascii.png)
 
 Here is the very simple idea how the algorithm works using US-ASCII encoding to parse the numbers, in US-ASCII encoding digits `0-9` are represented by the numbers in `48-57` range (_see it highlighted in red on the picture above_) and as you can see a few lines below, finding out the distance between **0** and every digit's US-ASCII values yields the number itself:
 */
let _0 = Character("0")
let _1 = Character("1")
/// As you can see each digit (eq. character) has numeric representation in US-ASCII character encoding
_0.asciiValue ?>> 48
_1.asciiValue ?>> 49
/// Finding the distance between the actual number and 0 yields the number itself
(_1.asciiValue! - _0.asciiValue!) ?>> 1
/*:
 Find below the code that implements two functions `stoi` and `itos` to convert `string` to an `integer` and vice versa.
 */

/// "Sniff" a string and return a tuple with the string itself alongside with a flag indicating whether it represents a positive or negative number.  
///
func sniff(s: String) -> (str: String, negative: Bool) {
    let lhs = s.startIndex, rhs = s.index(after: lhs)
    if s[lhs] == "-" {
        return (String(s[rhs..<s.endIndex]), true)
    }
    return (s, false)
}

/// Converts a string to an integer.
///
func stoi(s: String) -> Int {
    // Apply a helper function to split sign and digits
    let tuple = sniff(s: s), _0: UInt = 48
    // Simply a storage for computation results
    var bits: UInt = 0
    // Enumerate each & every character in the string
    for c in tuple.str {
        // Only valid numbers are allowed
        if c.isNumber == false { return -1 }
        // Get ASCII value of current digit 
        let lhs = UInt(c.asciiValue!)
        // Shift digits to the left and add one more,
        // eq. distance between the digit and 0.
        bits = bits * 10 + (lhs - _0)
    }
    // Special treatment for negative numbers (2s complement)
    if (tuple.negative) {
        return Int(bitPattern: ~bits + 1)
    }
    // Send back positive numbers as is
    return Int(bitPattern: bits)
}
//: Assertions for positive number use cases, nothing fancy or complicated just simple numbers.
stoi(s:    "1") ?>> 1
stoi(s:   "10") ?>> 10
stoi(s:   "99") ?>> 99
stoi(s:  "123") ?>> 123
//: Assertions for negative number use cases, nothing fancy or complicated just using `-` sign for all of them.
stoi(s:   "-1") ?>> -1
stoi(s:  "-10") ?>> -10
stoi(s:  "-99") ?>> -99
stoi(s: "-123") ?>> -123
//: Assertions for edge use cases, such as `0`, `Int.min` and `Int.max` conversion to confirm the code can handle these numbers as well.
stoi(s:                    "0") ?>> 0
stoi(s:  "9223372036854775807") ?>> Int.max
stoi(s: "-9223372036854775808") ?>> Int.min
//: Assertions for invalid input cases, eq. returns `-1` for all invalid inputs
stoi(s: "1-23") ?>> -1
//: TODO: Should fix these issues to get closer to [`strtol`](https://github.com/gcc-mirror/gcc/blob/master/libiberty/strtol.c) level
// This overflows backwards, eq. results in -9223372036854775807
//stoi(s: "-9223372036854775809")

// This throws an exception
//stoi(s: "-0")
//: [`Next`](@next)
