//: [`Previous`](@previous)
/*:
 ## Replace A's and Remove B's
 
 Consider the following two rules that are to be applied to an array of characters:
 
 - Replace each `a` by two `d`'s;
 - Delete each entry containing `b`;
 
 For example, applying these rules to the array `[a,c,d,b,b,c,a]` results in the array `[d,d,c,d,c,d,d]`.
 
 Write a program which takes as input an array of characters, and removes each `b` and replaces each `a` by two `d`'s. Specifically, along with the array, you are provided an integer-valued size. Size denotes the number of entries of the array that the operation is to applied to. You do not have to worry preserving about subsequent entries. For example, if the array is `[a,b,a,c,-]` and the size is `4`, then you should return `[d,d,d,d,c]`.
 
 You can assume there is enough space in the array to hold the final result.
 
 _HINT: Consider performing multiple passes on the input array._
 
    Input: s = [a,c,d,b,b,c,a], n = 7
    Output: [d,d,c,d,c,d,d]
 
 */
/// Removes b's and replaces a's with two d's.
///
func process(s: [Character], n: Int) -> [Character] {
    // TODO: Write some code to solve this coding challenge
    fatalError("TODO: Write some code to solve this challenge...")
}
//: Assertions for a few very basic use cases
process(s: ["a","-"], n: 1)     ?>> ["d","d"]
process(s: ["b","c","b"], n: 3) ?>> ["c"]
process(s: ["c","a","d","c","-"], n: 4) ?>> ["c","d","d","d","c"]
process(s: ["b","c","d","-"], n: 3) ?>> ["c","d"]
process(s: ["a","b","c","d"], n: 4) ?>> ["d","d","c","d"]
process(s: ["a","b","a","c","-"], n: 4) ?>> ["d","d","d","d","c"]
process(s: ["a","c","a","a","-","-","-"], n: 4) ?>> ["d","d","c","d","d","d","d"]
process(s: ["a","c","d","b","b","c","a"], n: 7) ?>> ["d","d","c","d","c","d","d"]
//: Assertions for edge cases
process(s: [], n: 0)    ?>> []
process(s: [], n: 1)    ?>> []
process(s: ["-"], n: 0) ?>> []
process(s: ["-"], n: 2) ?>> []
//: Assertions for more generic use cases
process(s: IN_0.s, n: IN_0.n) ?>> OUT_0
process(s: IN_1.s, n: IN_1.n) ?>> OUT_1
process(s: IN_2.s, n: IN_2.n) ?>> OUT_2
process(s: IN_3.s, n: IN_3.n) ?>> OUT_3
process(s: IN_4.s, n: IN_4.n) ?>> OUT_4
process(s: IN_5.s, n: IN_5.n) ?>> OUT_5
process(s: IN_6.s, n: IN_6.n) ?>> OUT_6
process(s: IN_7.s, n: IN_7.n) ?>> OUT_7
process(s: IN_8.s, n: IN_8.n) ?>> OUT_8
process(s: IN_9.s, n: IN_9.n) ?>> OUT_9
process(s: IN_10.s, n: IN_10.n) ?>> OUT_10
/*:
 - callout(Solution): Library array implementations often have methods for inserting into a specific location _(all later entries are shited right, and the array is resized)_ and deleting from a specific location _(all later entries are shifted left, and the size of the array is decremented)_. If the input array had such methods, we could apply them - however, the time complexity would be `O(n^2)`, where `n` is the array's length. The reason is that each insertion and deletion from the array would have `O(n)` time complexity.
 
 This problem is trivial to solve in O(n) time if we write result to a new array - we skip b's, replace a's by two d's , and copy over all other characters. However, this entails O(n) additional space.
 
 If there are no a's, we can implement the function without allocating additional space with one forward iteration by skipping b's and copying over the other characters.
 
 If there are no b's, we can implement the function without allocating additional space as follows. First, we compute the final length of the resulting string, which is the length of the array plus the number of a's. We can then write the result, character by character, starting from the last character, working our ways backwards.
 
 For example, suppose the array is [a,c,a,a,-,-,-] and the specified size is 4. Our algorithm updates the array to [a,c,a,a,-,d,d]. The next update is [a,c,a,d,d,d,d], followed by [a,c,c,d,d,d,d], and finally [d,d,c,d,d,d,d].
 
 We can combine these two approaches to get a complete algorithm. First, we delete b's and compute the final number of valid characters of the string, with a forward iteration through the string. Then we replace each a by two d's, iterating backwards from the end of the resulting string. If there are more b's than a's, the number of valid entries will decrease, and if there are more a's than b's the number will increase.
 
 In the program below we return the number of valid entries in the final result:
 
 ```
 int ReplaceAndRemove(int size, char s[]) {
     // Forward iteration: remove b's and count the number of a's.
     int write_idx = 0, a_count = 0;
     for (int i = 0; i< size; ++i) {
         if (s[i] != 'b') {
            s[write_idx++] = s[i];
         }
         if (s[i] == 'a') {
            ++a_count;
         }
     }
     
     // Backward iteration: replace a's with dd's starting from the end.
     int cur_idx = write_idx - 1;
     write_idx = write_idx + a_count - 1;
     int final_size = write_idx + 1;
     while (cur_idx >= 0) {
         if (s[cur_idx] == 'a') {
             s[write_idx--] = 'd';
             s[write_idx--] = 'd';
         } else {
            s[write_idx--] = s[cur_idx];
         }
         --cur_idx;
     }
     return final_size;
 }
 ```
 The forward and backward iterations each take O(n) time, so the total time complexity is O(n). No additional space is allocated.
 
 */
//: [`Next`](@next)
