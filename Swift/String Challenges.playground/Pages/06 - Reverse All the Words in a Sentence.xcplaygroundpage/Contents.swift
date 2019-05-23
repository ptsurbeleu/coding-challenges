//: [`Previous`](@previous)
/*:
 Given a string containing a set of words separated by whitespace, we would like to transform it to a string in which the words appear in the reverse order. For example, `Alice likes Bob` transforms to `Bob likes Alice`. We do not need to keep the original string.
 
 Implement a function to reverse words in a string `s`.
 
 _HINT: It's easier to solve this using more than one pass._
 
 Input: "Alice likes Bob"
 
 Output: "Bob likes Alice"
 
 */
/// Reverse words in the specified string.
///
func reverse(s: String) -> String {
    // First of all, reverse all characters in the string
    var rc: [Character] = s.reversed()
    // Get ready to track boundaries of each word
    var lhs = rc.start(), rhs = lhs
    // Scan all the characters of the string
    while rhs <= rc.end() {
        // Apply word reverse on space or end of the string
        if rhs == rc.end() || rc[rhs] == " " {
            // Reverse characters of the word
            rc.reverse(lhs..<rhs++)
            // Reset trackers
            lhs = rhs
            // Move on to the next character
            continue
        }
        // Move on to the next character
        rhs++
    }
    // Finally, all characters and words have been reversed
    return String(rc)
}
//: Assertions for examples from description
reverse(s: "Alice likes Bob") ?>> "Bob likes Alice"
reverse(s: "ram is costly") ?>> "costly is ram"
//: Assertions for more involved use cases and edge conditions
reverse(s: IN_0)  ?>> OUT_0
reverse(s: IN_1)  ?>> OUT_1
reverse(s: IN_2)  ?>> OUT_2
reverse(s: IN_3)  ?>> OUT_3
reverse(s: IN_4)  ?>> OUT_4
reverse(s: IN_5)  ?>> OUT_5
reverse(s: IN_6)  ?>> OUT_6
reverse(s: IN_7)  ?>> OUT_7
reverse(s: IN_8)  ?>> OUT_8
reverse(s: IN_9)  ?>> OUT_9
reverse(s: IN_10) ?>> OUT_10
/*:
 - callout(Solution): The code for computing the position of each character in the final result in a single pass is intricate.
 
 However, for the special case where each word is a single character, the desired result is simply the reverse of `s`.
 
 For the general case, reversing `s` gets the words to their correct relative positions. However, for words that are longer than one character, their letters appear in reverse order. This situation can be corrected by reversing the individual words.
 
 For example, `ram is costly` reversed yields `yltsoc si mar`. We obtain the final result by reversing each word to obtain `costly is ram`.
 
 ```
 void ReverseWords(string* s) {
 // Reverses the whole string first.
 reverse(s->begin(), s->end);
 
 size_t start = 0, end;
 while ((end = s->find(" ", start)) != string::npos) {
 // Reverses each word in the string
 reverse(s->begin() + start, s->begin() + end);
 start = end + 1;
 }
 // Reverses the last word.
 reverse(s->begin() + start, s->end());
 }
 ```
 
 Since we spend `O(1)` per character, the time complexity is `O(n)`, where `n` is the length of `s`. If strings are mutable, we can perform the computation in place, i.e., the additional space complexity is `O(1)`. If the string cannot be changed, the additional space complexity is `O(n)`, since we need to create a new string of length `n`.
 */
//: [`Next`](@next)
