//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/12
 
 Write a function that takes a number `n` and returns an array of all the primes between `0` and `n`.
 
 
 EXAMPLE:
 
    Input: n = 18
 
    Output: [2,3,5,7,11,13,17]
 
 */


/// Finds all prime numbers from 0 up to `n`.
///
/// - Parameter n: A number to find prime numbers up to.
func primes(n: Int) -> [Int] {
    // Estimate size of the prime numbers lookup range
    let size = Int((n - 3) / 2) + 1
    // Prepare storage and sieve (eq. lookup table)
    var store = [2], sieve = [Bool](repeating: true, count: size)
    // Sieve numbers into primes and their multiplies  
    for x in 0..<size {
        // Filter out non-prime number in the current position 
        if sieve[x] == false { continue }
        // Calculate current prime number, eq. 2x + 3
        store.append(2 * x + 3)
        // Find out position (eq. index) of `p * p` in the lookup table,
        // given that p = 2x + 3, therefore x = (p - 3) / 2
        //
        // Solving this equation in terms of `x` gives us a formula
        // to calculate an index of the next multiple of `p`,
        // that is p * p, p * p + p, p * p + 2p, p * p + 3p and etc.
        var y = 2 * (x * x) + 6 * x + 3
        // Filter out the current multiple of `p` and others as well
        while y < size {
            // Number in the current position is not prime
            sieve[y] = false
            // Having the initial position of p's multiple, eq. p * p
            // we can find out position of the next multiple, such as 
            // p * p + p, p * p + p + p, p * p + p + p + p and etc.
            //
            // For example, (5 * 5) + 5; (5 * 5) + 5 + 5; ... and etc.
            y += store.last!
        }
    }
    // Here is the answer
    return store
}


// Assert a few use cases
primes(n: 18) ?>> [2,3,5,7,11,13,17]
primes(n: 20) ?>> [2,3,5,7,11,13,17,19]
primes(n: 25) ?>> [2,3,5,7,11,13,17,19,23]
primes(n: 30) ?>> [2,3,5,7,11,13,17,19,23,29]
primes(n: 35) ?>> [2,3,5,7,11,13,17,19,23,29,31]
primes(n: 40) ?>> [2,3,5,7,11,13,17,19,23,29,31,37]
primes(n: 42) ?>> [2,3,5,7,11,13,17,19,23,29,31,37,41]
primes(n: 45) ?>> [2,3,5,7,11,13,17,19,23,29,31,37,41,43]
primes(n: 50) ?>> [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47]
primes(n: 55) ?>> [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53]
primes(n: 60) ?>> [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59]
primes(n: 65) ?>> [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61]
primes(n: 70) ?>> [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67]


//: [Next](@next)
