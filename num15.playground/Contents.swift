import Foundation

func solution(_ n:Int) -> Int {
    //n을 x로 나눈 나머지가 1이 되도록 하는 가장 작은 자연수 x
    
    var remainder = 2
    while n % remainder != 1{
        remainder += 1
    }
    return remainder
}
