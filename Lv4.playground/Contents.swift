// AbstractOperation: 추상화된 연산자 클래스
// 미완성...어려버라
class AbstractOperation {
    func performOperation(_ num1: Double, _ num2: Double) -> Double {
        fatalError("Abstract method must be overridden by subclass")
    }
}

// AddOperation: 더하기 연산자 클래스
class AddOperation: AbstractOperation {
    override func performOperation(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
}

// SubtractOperation: 빼기 연산자 클래스
class SubtractOperation: AbstractOperation {
    override func performOperation(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
}

// MultiplyOperation: 곱하기 연산자 클래스
class MultiplyOperation: AbstractOperation {
    override func performOperation(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
}

// DivideOperation: 나누기 연산자 클래스
class DivideOperation: AbstractOperation {
    override func performOperation(_ num1: Double, _ num2: Double) -> Double {
        if num2 != 0 {
            return num1 / num2
        } else {
            print("0은 나누기 못함")
            return 0.0
        }
    }
}

// Calculator 클래스
class Calculator {
    
    func calculate(operation: AbstractOperation, num1: Double, num2: Double) -> Double {
        return operation.performOperation(num1, num2)
    }
}

//결과를 받는 부분
let addOperation = AddOperation()
let subtractOperation = SubtractOperation()
let multiplyOperation = MultiplyOperation()
let divideOperation = DivideOperation()

let calculator = Calculator()

let resultAdd = calculator.calculate(operation: addOperation, num1: 10, num2: 20)
let resultSubtract = calculator.calculate(operation: subtractOperation, num1: 10, num2: 20)
let resultMultiply = calculator.calculate(operation: multiplyOperation, num1: 10, num2: 20)
let resultDivide = calculator.calculate(operation: divideOperation, num1: 10, num2: 20)
// 출력 부분
print("Addition: \(resultAdd)")
print("Subtraction: \(resultSubtract)")
print("Multiplication: \(resultMultiply)")
print("Division: \(resultDivide)")
