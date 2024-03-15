//import UIKit

//var greeting = "Hello, playground"

//17번 자연수 뒤집어 배열로 만들기 
func solution(_ n:Int64) -> [Int] {
    let arr = String(n).compactMap { Int(String($0)) }
    return arr.reversed()
}
