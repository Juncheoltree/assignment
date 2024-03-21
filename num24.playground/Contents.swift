func solution(_ seoul:[String]) -> String {
    var x = Int()
    for i in 0..<seoul.count {
        if seoul[i] == "Kim" {
           x = i
        break
        }
    }
    return "김서방은 \(x)에 있다"
}

/* 이렇게도 코딩 가능
 func solution(_ seoul:[String]) -> String {
     return "김서방은 \(seoul.index(of: "Kim")!)에 있다"
 }

 */
