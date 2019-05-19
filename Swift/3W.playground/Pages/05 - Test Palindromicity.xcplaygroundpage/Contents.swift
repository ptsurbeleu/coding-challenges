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
    // TODO: Write some code to solve this coding challenge
    fatalError("TODO: Write some code to solve this challenge...")
}

/// Test palindromicity of the specified string.
///
func test(s: String) -> Bool {
    // TODO: Write some code to solve this coding challenge
    fatalError("TODO: Write some code to solve this challenge...")
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
