//: [`Previous`](@previous)
/*:
 ## Compute The Spreadsheet Column Encoding 
 
 Spreadsheets often use an alphabetical encoding of the successive columns. Specifically, columns are identified by `"A"`, `"B"`, `"C"`, ..., `"X"`, `"Y"`, `"Z"`, `"AA"`, `"AB"`, ..., `"ZZ"`, `"AAA"`, `"AAB"`, ...
 
 Implement a `decode` function that converts a spreadsheet column id to the corresponding integer, with `"A"` corresponding to `0`.
 
 For example, you should return `3` for `"D"`, `26` for `"AA"`, `675` for `"ZZ"`, etc.
 
 How would you test your code?
 
 _HINT: There are `26` characters in `["A", "Z"]` and each can be mapped to an integer._
 
    Input: s = "ZZ"
    Output: 675
 
 */
/// Decode a spreadsheet column id into the corresponding integer.
///
func decode(s: String) -> UInt {
    // IDEA: Find out distance between lhs and rhs
    return 0
}


//: Assertions for a few `1-char` identifier use cases
decode(s: "A") ?>> 0
decode(s: "B") ?>> 1
decode(s: "Y") ?>> 24
decode(s: "Z") ?>> 25
//: Assertions for a few `2-char` identifier use cases 
decode(s: "AA") ?>> 26
decode(s: "AZ")
decode(s: "GV") 
decode(s: "SF")
decode(s: "ZZ")
//: Assertions for a few `3-char` identifier use cases
decode(s: "EHU")
decode(s: "IRW")
decode(s: "JVN")
decode(s: "REG")
//: Assertions for a few `4-char` identifier use cases
decode(s: "AWTU")
decode(s: "COHK")
decode(s: "OHKF")
decode(s: "SAST")
//: Assertions for a few `5-char` identifier use cases
decode(s: "EXMLN")
decode(s: "MHGUQ")
decode(s: "MVYFJ")
decode(s: "HXMLM")
decode(s: "PFBEA")
decode(s: "WUXNX")
decode(s: "VOWEZ")
//: Assertions for a few `6-char` identifier use cases
decode(s: "AMALTQ")
decode(s: "CLHTVM")
decode(s: "FFIDXM")
decode(s: "FVMQQQ")
decode(s: "QMNNEF")
//: Assertions for a few `7-char` identifier use cases
decode(s: "CEPJJPX")
decode(s: "EONPWOL")
decode(s: "FKDZNEQ")
//: Assertions for a few `invalid` identifier use cases
decode(s: "☠️")       ?>> 0
decode(s: "AZ☠️")     ?>> 0
decode(s: "AAZ☠️")    ?>> 0
decode(s: "FK☠️ZNEQ") ?>> 0
//: [`Next`](@next)
