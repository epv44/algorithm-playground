import Foundation

public class FindIslands {
    var map = [[1,1,0,0],
               [0,1,0,0],
               [0,0,1,1],
               [0,0,0,0]]
    
    public init() { }
    
    public func findIslands() {
        var islands = 0
        
        for x in 0..<map.count {
            for y in 0..<map.count {
                if map[x][y] == 1 {
                    dfs(x,y)
                    islands += 1
                }
            }
        }
        
        print("Islands found: \(islands)")
    }
    
    private func isValid(_ x: Int, _ y: Int) -> Bool {
        return x >= 0 && y >= 0 && x < map.count && y < map.count
    }
    
    private func dfs(_ r: Int, _ c: Int) {
        if isValid(r,c) && map[r][c] == 1 {
            map[r][c] = 0
            dfs(r+1, c)
            dfs(r, c+1)
            dfs(r-1, c)
            dfs(r, c-1)
            dfs(r+1, c+1)
            dfs(r-1,c-1)
            dfs(r+1,c-1)
            dfs(r-1,c+1)
        }
    }
}
