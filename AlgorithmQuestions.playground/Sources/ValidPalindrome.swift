import Foundation

public class ValidPalindrome {
    
    public init() { }
    
    public func validate(str: String) -> Bool {
        let stringArr = str.map { String($0) }
        for x in 0..<stringArr.count {
            if stringArr[x] != stringArr[stringArr.count-(x+1)] {
                return false
            }
        }
        return true
    }
}
