import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    //정답을 저장해줄 answer 변수
    var answer = 0
    
    //for문으로 sings배열 안에 값이 +인지 -인지 확인하고 그에 따른 값을 answer에 저장해준다!
    for i in 0..<signs.count {
        answer += signs[i] == true ? absolutes[i] : -absolutes[i]
    }
    //결과를 출력
    return answer
}
