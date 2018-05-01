import Foundation

class MaxSoFar {
    let arr = [31, -41, 59, 26, -53, 58, 97, -93, -23, 84]
    
    // iterate over the pairs: 0<=i<=j<n
    //O(n^3)
    func calculateNieve() {
        var maxSoFar = 0
        for i in 0..<arr.count {
            for j in i..<arr.count {
                var sum = 0
                for k in i...j {
                    sum += arr[k]
                }
                maxSoFar = max(maxSoFar, sum)
            }
        }
    }
    
    //O(n^2)
    func calculateIteration1() {
        var maxSoFar = 0
        for i in 0..<arr.count {
            var sum = 0
            for j in i..<arr.count {
                sum += arr[j]
                maxSoFar = max(maxSoFar, sum)
            }
        }
    }
    
    //scanning algorithm, O(n)
    func calculate() {
        var maxSoFar = 0
        var maxEndingHere = 0
        for i in 0..<arr.count {
            //invariant: maxendinghere and maxsofar are accurate for x[0..i-1]
            maxEndingHere = max(maxEndingHere + arr[i], 0)
            maxSoFar = max(maxSoFar, maxEndingHere)
        }
    }
}
