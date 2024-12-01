//#6
func uniqueSet (numbersArray: [Int]) -> Set<Int> {
    let currentArray = Set(numbersArray)
    return currentArray
}

let newArray = [1, 5, 3, 6, 7, 1]

print(uniqueSet(numbersArray: newArray))

