import Foundation

public class RangeIntersection {
    
    public init() { }
    
    public func calculate(range1: NSRange, range2: NSRange) -> Bool {
        return ((range1.location <= range2.location && (range1.location + range1.length >= range2.location)) ||
            (range2.location <= range1.location && (range2.location + range2.length >= range1.location)))
    }
}
