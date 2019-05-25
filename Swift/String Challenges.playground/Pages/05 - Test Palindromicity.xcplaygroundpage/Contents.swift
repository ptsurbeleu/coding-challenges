//: [`Previous`](@previous)
/*:
 ## Test Palindromicity
 
 For the purpose of this problem, define a palindromic string to be a string which all the non-alphanumeric characters are removed, it reads the same front to back ignoring case.
 
 For example, `"A man, a plan, a canal, Panama."` and `"Able was I, ere I saw Elba!"` are palindromic, but `"Ray are Ray"` is not.
 
 Implement a function which takes as input a string `s` and returns `true` if `s` is a palindromic string, otherwise it returns `false`.
 
 _HINT: Use two indices._
 
    Input: s = "A man, a plan, a canal, Panama"
 
    Output: true


    Input: s = "Ray are Ray"
 
    Output: false
 */
/// Skip non-alphanumeric characters.
///
func skip(c: Character) -> Bool {
    return c.isLetter == false && c.isNumber == false
}

/// Test palindromicity of the specified string.
///
func test(s: String) -> Bool {
    // Prepare read-only cursors to use for the test
    var lhs = s.start(), rhs = s.index(before: s.end())
    // Enumerate until both cursors cross
    while rhs > lhs {
        // Skip non-alphanumeric on the left
        while skip(c: s[lhs]) && lhs < rhs {
            lhs = s.index(after: lhs)
        }
        // Skip alpha-numeric on the right
        while skip(c: s[rhs]) && lhs < rhs {
            rhs = s.index(before: rhs)
        }
        // Test lowercase characters for palindromicity 
        if s[lhs].lowercased() != s[rhs].lowercased() {
            return false
        }
        // Switch to the next index on the left
        lhs = s.index(after: lhs)
        // Switch to the next index on the right
        rhs = s.index(before: rhs)
    }
    // String has successfully passed the test
    return true
}
//: Assertions
test(s: "A man, a plan, a canal, Panama.") ?>> true
test(s: "Able was I, ere I saw Elba!") ?>> true
test(s: "Able Elba") ?>> true
test(s: "xyx") ?>> true
test(s: "Ray is Ray") ?>> false
test(s: "qwerty") ?>> false
/*:
 - callout(Solution): The naive approach is to create a reversed version of s, and compare it with s, skipping non-alphanumeric characters. This requires additional space proportional to the length of s.
 
 We do not need to create the reverse string - rather, we can get the effect of the reverse of s by traversing s from right to left. Specifically, we use two indices to traverse the string, one forwards, the other backwards, skipping non-alphanumeric characters, performing case-insensitive comparison of the alphanumeric characters. We return false as soon as there is a mismatch. If the indices cross, we have verified palindromicity.
 
 */
//: [`Next`](@next)
