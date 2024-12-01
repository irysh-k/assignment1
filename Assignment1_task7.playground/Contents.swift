//#7
func wordLengths(from words: [String]) -> [String: Int] {
    var wordsDictionary = [String: Int]()
    
    words.map { word in
        wordsDictionary[word] = word.count
    }
    
    return wordsDictionary
}

let wordsArray = ["Hello", "swift", "code"]
print(wordLengths(from: wordsArray))

