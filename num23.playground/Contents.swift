func solution(_ num:Int) -> Int {
    if num == 1 { return 0}
    
    var x = num
    var count = 0
    while x != 1{
        if x % 2 == 0{
            x = x / 2
        }else{
            x = x * 3 + 1
        }
        count += 1
        
        if count >= 500{
            return -1
        }
    }
    return count
}
