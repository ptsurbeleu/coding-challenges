//: [`Previous`](@previous)
/*:
 ## Compute The Spreadsheet Column Encoding 
 
 Spreadsheets often use an alphabetical encoding of the successive columns. Specifically, columns are identified by `"A"`, `"B"`, `"C"`, ..., `"X"`, `"Y"`, `"Z"`, `"AA"`, `"AB"`, ..., `"ZZ"`, `"AAA"`, `"AAB"`, ...
 
 Implement a `decode` function that converts a spreadsheet column id to the corresponding integer, with `"A"` corresponding to `1`.
 
 For example, you should return `4` for `"D"`, `27` for `"AA"`, `702` for `"ZZ"`, etc.
 
 How would you test your code?
 
 _HINT: There are `26` characters in `["A", "Z"]` and each can be mapped to an integer._
 
    Input: s = "ZZ" 
    Output: 702

 */
/// Decode a spreadsheet column id into the corresponding integer.
///
func decode(s: String) -> UInt {
    // Store decoding results
    var id: UInt = 0
    // Enumerate each & every character in the identifier
    for char in s.unicodeScalars {
        // Only A-Z characters represent a valid column identifier
        if char.value < 0x41 || char.value > 0x5A {
            return 0
        }
        // Perform conversion to an integer
        id = id * 26 + UInt(char.value - 0x40)
    }
    // Here is an integer to represent the identifier
    return id
}
//: Assertions for a few `1-char` identifier use cases
decode(s: "A") ?>> 1
decode(s: "B") ?>> 2
decode(s: "Y") ?>> 25
decode(s: "Z") ?>> 26
//: Assertions for a few `2-char` identifier use cases 
decode(s: "AA") ?>> 27
decode(s: "AZ") ?>> 52
decode(s: "GV") ?>> 204
decode(s: "SF") ?>> 500
decode(s: "ZZ") ?>> 702
//: Assertions for a few `3-char` identifier use cases
decode(s: "EHU") ?>> 3609
decode(s: "IRW") ?>> 6575
decode(s: "JVN") ?>> 7346
decode(s: "REG") ?>> 12305
//: Assertions for a few `4-char` identifier use cases
decode(s: "AWTU") ?>> 33665
decode(s: "COHK") ?>> 63087
decode(s: "OHKF") ?>> 269340
decode(s: "SAST") ?>> 335134
//: Assertions for a few `5-char` identifier use cases
decode(s: "EXMLN") ?>> 2715818
decode(s: "MHGUQ") ?>> 6086591
decode(s: "MVYFJ") ?>> 6344426
decode(s: "HXMLM") ?>> 4086745
decode(s: "PFBEA") ?>> 7418555
decode(s: "WUXNX") ?>> 10896156
decode(s: "VOWEZ") ?>> 10332816
//: Assertions for a few `6-char` identifier use cases
decode(s: "AMALTQ") ?>> 17848289
decode(s: "CLHTVM") ?>> 41282553
decode(s: "FFIDXM") ?>> 74191637
decode(s: "FVMQQQ") ?>> 81582167
decode(s: "QMNNEF") ?>> 208179744
//: Assertions for a few `7-char` identifier use cases
decode(s: "CEPJJPX") ?>> 993648784
decode(s: "EONPWOL") ?>> 1729494350
decode(s: "FKDZNEQ") ?>> 1986484283
//: Assertions for a few `invalid` identifier use cases
decode(s: "☠️")       ?>> 0
decode(s: "AZ☠️")     ?>> 0
decode(s: "AAZ☠️")    ?>> 0
decode(s: "FK☠️ZNEQ") ?>> 0
//: [`Next`](@next)
