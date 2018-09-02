//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/06/30/
 
 Given a number, write a function to swap bits in odd and even positions with as few instructions as possible (eq. bit 0 and 1 are swapped, bit 2 and 3 are swapped and etc.).
 
 
 EXAMPLE
 
    Input: num = 0b101010
 
    Output: 0b010101
 
 */

func swap(num: UInt) -> UInt {
    // Query odd and even bits from the number

    // Swap odd and even bits

}

// Assert a few basic cases
swap(num: 0b000000) == 0b000000
swap(num: 0b000001) == 0b000010
swap(num: 0b000011) == 0b000011
swap(num: 0b000101) == 0b001010

// Assert original case + a few edge cases
swap(num: 0b101010) == 0b010101
swap(num: 0xaaaa_aaaa_aaaa_aaaa) == 0x5555_5555_5555_5555
swap(num: 0x5555_5555_5555_5555) == 0xaaaa_aaaa_aaaa_aaaa
swap(num: 0xffff_ffff_ffff_ffff) == 0xffff_ffff_ffff_ffff

//: [Next](@next)
