//#8

func sumOfSquares(numbers: [Int]) -> Int {
    var currentNumbers = numbers.map {$0 * $0}
    return currentNumbers.reduce(0, { x, y in
        x + y
    })
}

let numbersArray = [1, 2, 3]
// numbersArray squared = 1, 4, 9, sum = 14
print(sumOfSquares(numbers: numbersArray))

