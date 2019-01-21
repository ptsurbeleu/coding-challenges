//: [Previous](@previous)

/*
 
 Find a human-friendly explanation of this coding challenge at http://pabloduo.com/2018/09/07
 
 Write a function that takes an array of numbers (from 0 to 9) representing moves allowed for the player to advance to from each element and returns `true` if the player can pass to the end of the array (eq. game board) or `false` otherwise.
 
 
 EXAMPLE:
 
    Input: n = [1,1,1,1,1,1,1]
 
    Output: true
 
 
 EXAMPLE:
 
    Input: n = [1,1,1,1,1,0,1]
 
    Output: false

 */

/// Returns a Boolean value indicating whether the player can pass to the end
/// of the specified game board.
///
/// - Parameter n: An array of player's moves allowed for the specified game board.
func pass(n: [Int]) -> Bool {
    // Define edge of the game board
    let edgeOf = n.count
    // Prepare the state of the algorithm
    var offsetBy = 0, position = 0
    // Try every possible move thru the game board
    while edgeOf > position && offsetBy >= position {
        // Find out the maximum possible offset to advance by
        offsetBy = max(offsetBy, n[position] + position)
        // Move to the next position and discover moves allowed
        position += 1
    }
    // Match furthest reachable position to the edge of the board
    return offsetBy >= edgeOf
}


// Assert a few positive use cases
pass(n: [1,1,1,1,1,1,1]) ?>> true
pass(n: [3,3,1,0,2,0,1]) ?>> true
pass(n: [1,1,1,1,2,0,1]) ?>> true
pass(n: [1,5,0,0,0,0,1]) ?>> true
pass(n: [1,1,4,0,0,0,1]) ?>> true


// Assert a few negative use cases
pass(n: [0,0,0,0,0,0,0]) ?>> false
pass(n: [1,1,1,1,1,0,1]) ?>> false
pass(n: [1,1,1,1,1,0,0]) ?>> false
pass(n: [3,2,0,0,2,0,1]) ?>> false
pass(n: [1,4,0,0,0,0,1]) ?>> false


//: [Next](@next)
