import Foundation

/// Yields iterator for a randomly shuffled sequence in the given range.
///
/// - Parameter in: A range to shuffle numbers from.
public func of(in seq: ClosedRange<Int>) -> AnyIterator<Int> {
    // Shuffle numbers in the sequence
    let nums = seq.shuffled()
    // Instantiate iterator from the number sequence
    let iterator = nums.makeIterator()
    // Wrap iterator
    return AnyIterator(iterator)
}
