import Foundation

public class CommentRemover {
    public class func commentRemover(text: String) -> String {
        var skipToNewLine = false
        var inComment = false
        var previousCharacter: Character!
        var newString = ""
        for char in text {
            if inComment && previousCharacter == "*" && char == "/" {
                newString.removeLast()
                inComment = false
                continue
            } else if inComment {
                continue
            } else {
                if previousCharacter == "/" && char == "*" {
                    inComment = true
                    newString.removeLast()
                    previousCharacter = char
                    continue
                } else if char == "/" && previousCharacter == "/" {
                    skipToNewLine = true
                    newString.removeLast()
                    continue
                } else if skipToNewLine && char == "\n" {
                    skipToNewLine = false
                } else if skipToNewLine {
                    continue
                }
            }
            
            previousCharacter = char
            newString.append(char)
        }
        
        return newString
    }
}
