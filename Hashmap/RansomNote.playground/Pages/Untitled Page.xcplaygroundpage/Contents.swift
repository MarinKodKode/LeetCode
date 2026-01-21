import UIKit

/*Given two strings ramsonNote and magazine, return true uf ransomNote can be constructed by using the letters of magazine.
 Each letter in magazine can only be used once in ransomNote.
 
 
 Example 1:
 
 Input: ransomNote = "a", magazine = "b"
 Output: false
 Example 2:
 Input: ransomNote = "aa", magazine = "ab"
 Output: false
 Example 3:
 
 Input: ransomNote = "aa", magazine = "aab"
 Output: true
 
*/

class Solution {
    func canConstruct(_ ransomNote : String, _ magazine : String) -> Bool {
        
        var counts : [ Character : Int ] = [ : ]
        
        for char in magazine {
            counts[char , default: 0] += 1
        }
        
        for char in ransomNote {
            if let available = counts[char], available > 0 {
                counts[char]! -= 1
            }else {
                return false
            }
        }
    
        return true
    }
}
