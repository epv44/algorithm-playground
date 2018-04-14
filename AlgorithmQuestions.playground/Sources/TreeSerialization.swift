import Foundation

public class TreeService {
    var fakeFile = [String]()
    var bst: BinarySearchTree<Int>?
    
    public init() { }
    
    public func serialize(tree: BinarySearchTree<Int>?, from root: BinarySearchTree<Int>?) {
        self.bst = tree
        print("serializing...")
        fakeFile = [String]()
        preorder(root: bst)
        print(fakeFile)
        print("deserializing...")
        let root = deserialize()
        print(root)
    }
    
    public func deserialize() -> BinarySearchTree<Int>? {
        guard let strVal = fakeFile.first else { return nil }
        if strVal == "NAN" {
            fakeFile.removeFirst()
            return nil
        }
        guard let val = Int(strVal) else {
            print("legit error encountered")
            return nil
        }
        
        fakeFile.removeFirst()
        let root = BinarySearchTree<Int>(value: val)
        root.left = deserialize()
        root.right = deserialize()
        return root
    }
    
    public func preorder(root: BinarySearchTree<Int>?) {
        if let root = root {
            fakeFile.append(String(root.value))
            preorder(root: root.left)
            preorder(root: root.right)
        } else {
            fakeFile.append("NAN")
        }
    }
}

