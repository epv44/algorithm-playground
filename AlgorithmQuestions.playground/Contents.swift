import UIKit
import Foundation
//check for legal arrangement

//let cache = LRUCache(capacity: 3)
//cache.put(key: 1, value: 1)
//cache.put(key: 2, value: 2)
//cache.put(key: 3, value: 3)
//print(cache.get(key: 2))
//cache.put(key: 4, value: 4)
//print(cache.get(key: 1))
//cache.display()

//main(args: .rangeIntersect)

//let arr = [[1,2,3,4],
//           [5,6,7,8],
//           [9,10,11,12],
//           [13,14,15,16]]
//
//enum Direction {
//    case right, left, up, down
//
//    func next() -> Direction {
//        switch self {
//        case .right: return .down
//        case .down:  return .left
//        case .left:  return .up
//        case .up:    return .right
//        }
//    }
//}
//func print(arr: [[Int]]) {
//    var x = arr.count
//    var y = 0
//    var direction: Direction = .right
//    while x > 0 {
//        switch direction {
//        case .right:
//            var temp = 0
//            while temp < x {
//                print(arr[y][temp])
//                temp += 1
//            }
//            direction = direction.next()
//            y += 1
//        case .down:
//            var temp = y
//            while temp < x {
//                print(arr[temp][x-1])
//                i += 1
//            }
//            direction = direction.next()
//            x -= 1
//        case .left:
//            var temp = x
//            while temp > y {
//                print(arr[x][temp])
//                temp -= 1
//            }
//            x -= 1
//        case .up:
//            var temp = x
//            while temp > x {
//                print(arr[arr.count-x][y])
//                temp -= 1
//            }
//            x -= 1
//        }
//    }
//}
//
//print(arr: arr)
//
