//import UIKit

//var greeting = "Hello, playground"

//알고리즘 16번 x만큼 간격이 있는 n개의 숫자
func solution(_ x: Int, _ n: Int) -> [Int] {
    var result = [Int]()
    // i를 1부터 n까지 반복
    // x * i를 result라는 배열에 저장
    for i in 1...n {
        result.append(x * i)
    }
    return result
}
