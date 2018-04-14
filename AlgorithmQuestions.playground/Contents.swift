import UIKit
import Foundation

enum Programs {
    case serializeBST
}

func driver(run p: Programs...) {
    p.forEach {
        switch $0 {
        case .serializeBST: serializeBST()
        }
    }
}

//Serialize BST
func serializeBST() {
    let bst = BinarySearchTree(array: [50,30,20,40,70,60,80])
    let root = bst.search(value: 50)
    print(bst)
    TreeService().serialize(tree: bst, from: root)
}

//find islands
func findIslands() {
    let map = [[1,1,0,0,0],
               [0,1,0,0,1],
               [1,0,0,1,1],
               [0,0,0,0,0],
               [1,0,1,0,1]]
    var islands = 0
    //we need to start this somewhere...
    //find islands from that point
    //then start somewhere else and try again???
    
    var q = [Int]()
    func bfs(graph: [[Int]], src: Int) {
        let numberOfNodes = graph[src].count
        var visited = Array(repeating: false, count: numberOfNodes)
        visited[src] = true
        q.append(src)
        while q.count > 0 {
            let element = q.removeFirst()
            print("At node: \(element)")
            for x in 0..<numberOfNodes {
                if graph[element][x] == 1 && !visited[x] {
                    q.append(x)
                    visited[x] = true
                    //print("adding node: \(x)")
                }
            }
            //print("done processing node: \(element)")
        }
    }
    bfs(graph: map, src: 0)
}

findIslands()
