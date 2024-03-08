protocol Operation {
    func performOperation(num1: Double, num2: Double) -> Double
}

class AddOperation: Operation {
    func performOperation(num1: Double, num2: Double) -> Double {
        return num1 + num2
    }
}

class SubtractOperation: Operation {
    func performOperation(num1: Double, num2: Double) -> Double {
        return num1 - num2
    }
}


class MultiplyOperation: Operation {
    func performOperation(num1: Double, num2: Double) -> Double {
        return num1 * num2
    }
}


class DivideOperation: Operation {
    func performOperation(num1: Double, num2: Double) -> Double {
        if num2 != 0 {
            return num1 / num2
        } else {
            print("0으로 나눌 수 없습니다.")
            return 0.0
        }
    }
}

// 계산기 클래스
class Calculator {
    var operation: Operation?

    // 계산기에 연산을 설정하는 메서드
    func setOperation(_ operation: Operation) {
        self.operation = operation
    }

    // 설정된 연산을 사용하여 계산하는 메서드
    func calculate(num1: Double, num2: Double) -> Double {
        guard let operation = operation else {
            print("올바른 연산을 선택해주세요")
            return 0.0
        }
        return operation.performOperation(num1: num1, num2: num2)
    }
}


let calculator = Calculator()

calculator.setOperation(AddOperation())
let addResult = calculator.calculate(num1: 10, num2: 20)


calculator.setOperation(SubtractOperation())
let subResult = calculator.calculate(num1: 10, num2: 20)


calculator.setOperation(MultiplyOperation())
let mulResult = calculator.calculate(num1: 10, num2: 20)


calculator.setOperation(DivideOperation())
let divResult = calculator.calculate(num1: 10, num2: 20)


print("덧셈 : \(addResult)")
print("뺄셈 : \(subResult)")
print("곱셈 : \(mulResult)")
print("나눗셈 : \(divResult)")
