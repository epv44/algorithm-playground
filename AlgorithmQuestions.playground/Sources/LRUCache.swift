/*
 Problem: Design a least-recently-used (LRU) cache that stores key value pairs.
 
 // The cache capacity is static and is specified in the constructor
 LRUCache(int capacity) {}
 
 // Return -1 if key does not exist. Otherwise return value
 // associated with the key; accessed element becomes the MRU.
 int get(int key) {}
 
 // Insert the <key, value> pair into the cache, evicting
 // the LRU element if necessary.
 // The element with this key should be the MRU.
 void put(int key, int value) {}
 
 // Display the entries in the cache, ordered from MRU to LRU
 void display() {}
 
 */

import Foundation

class LRUCache {
    var cache = [Int:Int]()
    let capacity: Int
    var currentCapacity = 0
    var recents = [Int]()
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    func get(key: Int) -> Int? {
        if let value = cache[key] {
            makeMRU(for: key)
            return value
        } else {
            return -1
        }
    }
    
    func put(key: Int, value: Int) {
        if capacity == currentCapacity {
            cache[recents.removeFirst()] = nil
            currentCapacity -= 1
        }
        cache[key] = value
        makeMRU(for: key)
        currentCapacity += 1
    }
    
    func display() {
        var x = capacity - 1
        while (x >= 0) {
            let key = recents[x]
            print("key: \(key) value: \(cache[key])")
            x -= 1
        }
    }
    
    private func makeMRU(for key: Int) {
        if let index = recents.index(of: key) {
            recents.remove(at: index)
        }
        recents.append(key)
    }
}

