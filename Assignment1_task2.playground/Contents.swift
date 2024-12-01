//#2

enum calculationError: Error {
    case divisionError
}

func calculator(_ a: Int, _ b: Int, operation: String) throws -> Int? {
    let result: Int?
    
    switch operation {
    case "add":
        result = a + b
    case "subtract":
        result = a - b
    case "multiply":
        result = a * b
    case "divide":
        if b == 0 {
            throw calculationError.divisionError
        } else {
            result = a / b
        }
    default:
        result = nil
    }
    return result
}

do {
    try print(calculator(3, 0, operation: "divide")!)
} catch {
    print(error)
}

