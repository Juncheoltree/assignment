import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    for i in String(n) {
        answer += Int(String(i))!
    }
    
    
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")
    
    return answer
}
