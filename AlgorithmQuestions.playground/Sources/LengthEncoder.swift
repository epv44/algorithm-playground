import Foundation

public class LengthEncoder {
    
    public init() { }
    
    public func calculate(str: String = "AAAABBCDDDEEAA") -> String {
        var count = 0
        var previous = ""
        var final = ""
        "AAAABBCDDDEEAA".forEach { e in
            let current = String(e)
            if previous == current {
                count += 1
            } else if count == 0 && current != previous {
                count += 1
                final += current
            } else {
                final += ("\(count)" + current)
                count = 1
            }
            previous = current
        }
        return final + "\(count)"
    }
}
