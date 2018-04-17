import Foundation
/**
     Given an array, without using extra space, move all zeros  to the end and no-zeros to the beginning. The function should return the number of non-zeros.
 **/
public class MoveTheZeros {
    
    public init() { }
    
    public func calculate() {
        var arr = [1,4,0,2,0,3]
        var x = 0
        for i in 0..<arr.count {
            if arr[i] == 0 {
                print("i: \(i) x: \(x)")
                arr.swapAt(i, x)
                x += 1
            }
        }
        print(x)
        print(arr)
    }
}
