//
//  main.swift
//  baseballGame
//
//  Created by 김준철 on 3/14/24.

// BaseballGame.swift 파일 생성
class BaseballGame {
    var     attepmts: Int = 0 //시도 횟수 저장할 프로퍼티
    
    func start(){
        var userInput: [Int]?
        let answer = makeAnswer()
        
        func makeAnswer() -> [Int] {
            let numbers = Array(1...9)
            let randomNumbers = numbers.shuffled().prefix(3)
            return Array(randomNumbers)
            
        }
        
        print("Game Start!!!")
        
        while true {
                    repeat {
                        userInput = getUserInput()
                    } while userInput == nil || !isUserInputValid(userInput!)
                    
                    print("입력한 숫자: \(userInput!)")
                    
            
                    attepmts += 1 //시도 횟수
            
                    let result = compare(answer: answer, userInput: userInput!)
                    print("스트라이크: \(result.strike), 볼: \(result.ball)")
                    
                    if result.strike == 3 {
                        print("정답입니다!")
                        return // 함수 종료 원래는 break였음루프를 빠져나옵니다.
                    }
                }
            }
    func showAttempts(){
        print("시도횟수는 \(attepmts)번 입니다.")
    }
    //게임 재시작하면 초기화
    func resetAttempts(){
        attepmts = 0
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



print("야구게임입니다. 숫자를 입력하고 엔터를 눌러주세요 1. 게임시작 2. 전 게임의 시도횟수 보기 3. 게임 끝내기")

while let inputNumber = readLine(), let choice = Int(inputNumber){
    switch choice{
    case 1:
        let game = BaseballGame()
        game.start()
        game.resetAttempts() // 게임을 새로 시작하면 그전 기록 리셋
        
    case 2:
        let game = BaseballGame()
        game.showAttempts()
    case 3:
        print("프로그램 종료")
        exit(0)
    default:
        print("잘못된 입력입니다. 1,2,3 골라주세요")
    }
}



