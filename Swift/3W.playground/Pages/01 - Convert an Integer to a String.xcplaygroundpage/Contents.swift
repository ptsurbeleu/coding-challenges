//: [`Previous`](@previous)
/*:
 
 ## 01 - Convert an Integer to a String
 
 A string is a sequence of characters. A string may encode and integer, e.q. "123" encodes 123. In this problem, you are to implement a method that takes an integer and returns the string with its digits. Your code should handle negative integers. You cannot use functions from the standard library.
 
 _HINT: Build the result one character at a time._
 
 
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
 Find below the code that implements `itos` function to convert an `integer` to a `string`.
 */
/// Converts an integer to a string.
///
func itos(n: Int) -> String {
    // TODO: Write some code to solve this coding challenge
    fatalError("TODO: Write some code to solve this challenge...")
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
