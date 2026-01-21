import Foundation
class Solution {
    
    func isIsomorphic(_ s : String, _ t : String) -> Bool {
        
        if s.count != t.count { return false }
        
        var mapST = [Character : Character]()
        var mapTS = [Character : Character]()
        
        let sArray = Array(s)
        let tArray = Array(t)
        
        for i in 0..<sArray.count {
            
            let c1 = sArray[i]
            let c2 = tArray[i]
            
            if let mapped = mapST[c1] {
                print("mapped \(mapped)")
                print("mapped")
                if mapped != c2 {
                    return false
                }
            }else {
                print("mapped \(mapTS[c2])")
                if mapTS[c2] != nil {
                    return false
                }
                mapST[c1] = c2
                mapTS[c2] = c1
                print("mapped \(mapTS[c1])")
                print("mapped \(mapTS[c2])")
            }
        }
        
        return true
    }
}


let testing = Solution().isIsomorphic("peera", "ptoza")

print("Testing - \(testing)")
