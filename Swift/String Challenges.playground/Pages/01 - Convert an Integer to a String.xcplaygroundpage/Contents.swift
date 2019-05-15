//: [`Previous`](@previous)
/*:
 
 ## Convert an Integer to a String
 
 A string is a sequence of characters. A string may encode and integer, e.q. "123" encodes 123. In this problem, you are to implement a method that takes an integer and returns the string with its digits. Your code should handle negative integers. You cannot use functions from the standard library.
 
 _HINT: Build the result one digit at a time._
 
 
    Input: n = 123
 
    Output: "123"

 What you see on the picture below is known as US-ASCII (_aka. ASCII_) character encoding that describes typographical symbols predominantly used in the United States:
 
 ![US-ASCII character encoding table](ascii.png)
 
 Here is the very simple idea how the algorithm works using US-ASCII encoding to parse the numbers, in US-ASCII encoding digits `0-9` are represented by the numbers in `48-57` range (_see it highlighted in red on the picture above_) and as you can see a few lines below, finding out the distance between **0** and every digit's US-ASCII values yields the number itself:
 */
let ascii_0 = Character(ascii: 48)
let ascii_1 = Character(ascii: 1 + 48)
/// As you can see each character (eq. digit) has numeric representation in US-ASCII character encoding
ascii_0 ?>> "0"
ascii_1 ?>> "1"
/*:
 Find below the code that implements two functions `stoi` and `itos` to convert `string` to an `integer` and vice versa.
 */
/// Converts an integer to a string.
///
func itos(n: Int) -> String {
    // Get ready storage for the algorithm
    var bits = "", num = n
    // Enumerate each & every digit in the number
    repeat {
        // Find out absolute value, since ASCII uses positive numbers only
        let digit = abs(num % 10), uint8 = UInt8(digit)
        // Find out the actual character by adding 48 (0s code) to the value
        let char = Character(ascii: uint8 + 48)
        // Insert new character into the beginning of the string (eq. RTL conversion)
        bits.insert(char, at: bits.startIndex)
        // Shift number to the left to work on the next digit
        num /= 10
    } while num != 0
    // Insert '-' sign for a negative number
    if n < 0 {
        bits.insert("-", at: bits.startIndex)
    }
    // Send back string representation of the number
    return bits
}
//: Assertions for positive number use cases, nothing fancy or complicated just simple numbers.
itos(n:   1) ?>> "1"
itos(n:  10) ?>> "10"
itos(n:  99) ?>> "99"
itos(n: 123) ?>> "123"
//: Assertions for negative number use cases, nothing fancy or complicated just using `-` sign for all of them.
itos(n:   -1) ?>> "-1"
itos(n:  -10) ?>> "-10"
itos(n:  -99) ?>> "-99"
itos(n: -123) ?>> "-123"
//: Assertions for edge use cases, such as `0`, `Int.min` and `Int.max` conversion to confirm the code can handle these numbers as well.
itos(n:       0) ?>> "0"
itos(n: Int.max) ?>> "9223372036854775807"
itos(n: Int.min) ?>> "-9223372036854775808"
//: [`Next`](@next)
