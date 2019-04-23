//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/06/28/
 
 Explain what the following function does...
 
 func mystery(n: Int) -> Bool {
    // Some mystery bitwise computation going on...
    return n & (n - 1) == 0
 }
 
 
 EXAMPLE
 
    Input: n = 0b0000_1000; n = 0b0110_0101;
 
    Output: true; false;
 
 */

func powerof2(n: Int) -> Bool {
    // TODO: Explain the code below to solve this coding challenge
    return n & (n - 1) == 0
}


// Assert original use cases + few more
powerof2(n: 0b0000_0100) ?>> true
powerof2(n: 0b0000_1000) ?>> true
powerof2(n: 0b0001_0000) ?>> true
powerof2(n: 0b0110_0101) ?>> false

//: [Next](@next)
