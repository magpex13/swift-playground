class Calculator {
    func divide(x: Double, y: Double) throws -> Double {
        if y == 0 {
            throw CalculatorError.divisionByZero
        }
        return x / y
    }
}

let calculator = Calculator()
var successfulResult = try! calculator.divide(x: 4, y: 2)
print(successfulResult)

enum CalculatorError: Error {
    case divisionByZero
}

do {
    successfulResult = try calculator.divide(x: 10, y: 5)
    print(successfulResult)
    
    let invalidResult = try calculator.divide(x: 10, y: 0)
    print(invalidResult)
} catch CalculatorError.divisionByZero {
    print("Division by zero detected and not allowed")
} catch {
    print(error)
}
