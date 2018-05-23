import Foundation

public enum Programs {
    case serializeBST
    case islands
    case findPivot
    case moveZeros
    case validPalindrome
    case rangeIntersect
    case spellcheck
}

public func main(args p: Programs...) {
    p.forEach {
        switch $0 {
        case .serializeBST:     serializeBST()
        case .islands:          findIslands()
        case .findPivot:        findPivot()
        case .moveZeros:        moveZeros()
        case .validPalindrome:  validPalindrome()
        case .rangeIntersect:   rangeIntersect()
        case .spellcheck:       spellcheck()
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
    FindIslands().findIslands()
}

//find pivot point
func findPivot() {
    print(FindPivot().findPivotPoint(arr: [7,8,9,1,2,3,4,5,6]))
}

//move the zeros -> see MoveTheZeros file for details
func moveZeros() {
    MoveTheZeros().calculate()
}

func validPalindrome() {
    print(ValidPalindrome().validate(str: "racecar"))
}

func rangeIntersect() {
    let range1 = NSRange(location: 7, length: 10)
    let range2 = NSRange(location: 1, length: 5)
    print(RangeIntersection().calculate(range1: range1, range2: range2))
}

func spellcheck() {
    let spellchecker = Spellcheck()
    spellchecker.createSpellchecker(arr: ["Yellow", "bLue", "gRoan"])
    print(spellchecker.check(word: "graun"))
}
