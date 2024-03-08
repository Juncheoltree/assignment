
class Calculator {
    func calculate(operatorType: String, num1: Double, num2: Double) -> Double {
        var result: Double = 0.0
        
        
        //연산
        switch operatorType {
        case "+":
            result = num1 + num2
        case "-":
            result = num1 - num2
        case "*":
            result = num1 * num2
        case "/":
            if num2 != 0 {
                result = num1 / num2
            } else {
                print("0은 나누기 못함")
            }
        case "%":
            // 나머지(truncatingRemainder) 연산, %를 사용하고 싶었으나 입력되는 값의 타입이 둘다 Int여야 가능하다고 해서 truncatingRemainder를 사용
            // tr은 소숫점 발생시 0에 가까운 정수, remainder은 소숫점 발생시 가까운 짝수 정수를 택함
            result = num1.truncatingRemainder(dividingBy: num2)
            //result = Double(Int(num1) % Int(num2)) //라는 방법도 있음
            
        
        default:
            print("지원안하는 연산자 입니다.")
        }
        
        return result
    }
}

let calculator = Calculator()
let add = calculator.calculate(operatorType: "+", num1: 10, num2: 20)
let sub = calculator.calculate(operatorType: "-", num1: 10, num2: 20)
let mul = calculator.calculate(operatorType: "*", num1: 10, num2: 20)
let div = calculator.calculate(operatorType: "/", num1: 10, num2: 20)
//나머지 연산은 남는 수가 있어야해서 이렇게 숫자를 넣었습니다.
let tru = calculator.calculate(operatorType: "%", num1: 5, num2: 3)

print("add : \(add)")
print("sub : \(sub)")
print("mul : \(mul)")
print("div : \(div)")
print("tru : \(tru)")
