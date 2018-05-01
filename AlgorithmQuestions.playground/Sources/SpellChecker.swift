
import Foundation

// Enter your code here. Read input from STDIN. Print output to STDOUT
//create simple spell checker


// 1. Capitialization
// [ Yellow, gReen ]
// YELLOW -> Yellow
// GrEeN -> gReen

// 2. Mixed up vowels
// { a, e, i, o, u }
// Yilluw -> Yellow
// gRoan -> gReen

// YALLOW -> Yellow

//YALLOW -> map to key: yallaw, value: Yellow
//YALLIW -> map to key: yallaw, value: Yellow

class Spellcheck {
    private var spellcheckerDict = [String: String]()
    private let vowels = ["a", "e", "i", "o", "u"]
    
    func createSpellchecker(arr: [String]) {
        spellcheckerDict = createSpellchecker(arr: arr)
    }
    
    func check(word: String) -> String {
        let sanitizedInput = sanitize(word: word)
        return spellcheckerDict[sanitizedInput] ?? "error"
    }
    
    private func createSpellchecker(arr: [String]) -> [String:String] {
        var dictionary = [String:String]()
        arr.forEach { value in
            let key = sanitize(word: value)
            dictionary[key] = value
        }
        return dictionary
    }
    
    private func sanitize(word: String) -> String {
        let lower = word.lowercased()
        return lower.map { vowels.contains(String($0)) ? "a" : String($0) }.reduce("", { x, y in
               return x+y
            })
    }
}


