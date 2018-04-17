import Foundation
public class FindPivot {
    
    public init() { }
    
    public func findPivotPoint(arr: [Int]) -> Int {
        return binarySearch(arr: arr, l:0, r:arr.count-1)
    }
    
    private func binarySearch(arr: [Int], l: Int, r: Int) -> Int {
        if r >= 1 {
            let mid = (r-1)/2
            if ((arr[mid] < arr[mid-1]) && (arr[mid] < arr[mid+1])) {
                return mid
            }
            if arr[mid] < arr.count / 2 {
                return binarySearch(arr: arr, l: l, r: mid-1)
            }
            if arr[mid] > arr.count / 2 {
                return binarySearch(arr: arr, l: mid+1, r: r)
            }
        }
        
        return -1
    }
}
