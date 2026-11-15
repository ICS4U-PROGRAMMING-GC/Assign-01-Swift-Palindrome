
import Foundation

func isPalindrome(_ word: String) -> Bool {
    let reversed = String(word.reversed())
    return word.lowercased() == reversed.lowercased()
}

var results: [String] = []

var palindromeCount = 0
var notPalindromeCount = 0

let filePath = "words.txt"

do {
    let content = try String(contentsOfFile: filePath, encoding: .utf8)
    let words = content.components(separatedBy: .whitespacesAndNewlines)

    for word in words {
        if !word.isEmpty {
            if isPalindrome(word) {
                results.append(word + " - Palindrome")
                palindromeCount += 1
            } else {
                results.append(word + " - Not a palindrome")
                notPalindromeCount += 1
            }
        }
    }

    for result in results {
        print(result)
    }

    print("\n Summary of the palindrome checker")
    print("Total words: \(palindromeCount + notPalindromeCount)")
    print("Palindromes: \(palindromeCount)")
    print("Not palindromes: \(notPalindromeCount)")

} catch {
    print("File not found.")
}
