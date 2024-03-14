//
//  main.swift
//  baseballGame
//
//  Created by 김준철 on 3/14/24.
//
//1. 게임 시작하기 2. 게임 기록 보기 3. 종료하기
let game = BaseballGame()
game.start() // BaseballGame 인스턴스를 만들고 start 함수를 구현하기


// BaseballGame.swift 파일 생성
class BaseballGame {
    func start(){
        var userInput: [Int]?
        let answer = makeAnswer()
        
        func makeAnswer() -> [Int] {
            let numbers = Array(1...9)
            let randomNumbers = numbers.shuffled().prefix(3)
            return Array(randomNumbers)
            
        }
        /*print("입력한 숫자: \(userInput!)")
        
        let result = compare(answer: answer, userInput: userInput!)
        print("스트라이크: \(result.strike), 볼: \(result.ball)")
        */
        
        while true {
                    repeat {
                        userInput = getUserInput()
                    } while userInput == nil || !isUserInputValid(userInput!)
                    
                    print("입력한 숫자: \(userInput!)")
                    
                    let result = compare(answer: answer, userInput: userInput!)
                    print("스트라이크: \(result.strike), 볼: \(result.ball)")
                    
                    if result.strike == 3 {
                        print("정답입니다!")
                        break // 루프를 빠져나옵니다.
                    }
                }
            }
    //사용자 입력 올바른 형식 확인 skrike 3이면 break로 while문 루프 종료
    func isUserInputValid(_ userInput: [Int]) -> Bool {
        return userInput.count == 3 && Set(userInput).count == 3
    }

    func getUserInput() -> [Int]? {
        
        print("세 자리의 숫자를 입력하세요:")
        print("중복불가능/0으로시작불가능/3자리만 입력하세요")
        
        guard let userInput = readLine(), // 사용자 입력 받기
              userInput.count == 3, // 입력이 3자리인지 확인
              let number = Int(userInput), // 정수로 변환
              Set(userInput).count == 3, // 중복되는 숫자가 없는지 확인
              !userInput.hasPrefix("0") // 0으로 시작하지 않는지 확인
        else {
            print("조건에 맞게 세 자리의 숫자를 정확히 입력하세요.")
            return nil
        }
        
        return userInput.compactMap { $0.wholeNumberValue }
    }
    
    func compare(answer: [Int], userInput: [Int]) -> (strike: Int, ball: Int) {
        var strike = 0
        var ball = 0
        
        for (index, number) in userInput.enumerated() {
            if number == answer[index] {
                strike += 1
            } else if answer.contains(number) {
                ball += 1
            }
        }
        
        return (strike, ball)
    }}

