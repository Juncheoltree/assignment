import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    //이때, a와 b의 내적은 a[0]*b[0] + a[1]*b[1] + ... + a[n-1]*b[n-1] 입니다. (n은 a, b의 길이)
    
    var result = 0
    
    for idx in 0..<a.count{
        result += a[idx] * b[idx]
    }
    
    return result
}
