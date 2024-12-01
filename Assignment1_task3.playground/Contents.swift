//#3
func reverseString(inputStr: String) -> (revertedStr: String, charNumber: Int, palindrome: Bool) {
    let revertedStr = String(inputStr.reversed())
    let charNumber = revertedStr.count
    let palindrome = revertedStr.lowercased() == inputStr.lowercased() ? true : false
    
    return (revertedStr: revertedStr, charNumber: charNumber, palindrome: palindrome)
}

print(reverseString(inputStr: "Eye"))
