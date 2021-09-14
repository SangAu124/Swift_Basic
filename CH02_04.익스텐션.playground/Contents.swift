import UIKit

// 익스텐션 -> 구조체, 클래스, 열거형, 프로토콜 타입에 새로운 기능을 추가할 수 있다.

// 익스텐션이 타입에 추가할 수 있는 기능
// - 연산 탕비 프로퍼티 / 연산 인스턴스 프로퍼티
// - 타입 메서드 / 인스턴스 메서드
// - 이니셜라이저
// - 서브스크립트
// - 중첩 타입
//- 특정 프로토콜을 준수할 수 있도록 기능 추가

// ** 익스텐션은 새로운 기능을 넣을 수 있지만 재정의할 수는 없다

/*
extension 확장할 타입 이름 {
    // 타입에 추가될 새로운 기능 구현
}
*/

//프로토콜 채택할 수 있도록 확장
/*
 extension 확장할 타입 이름: 프로토콜1, 프로토콜2, 프로토콜3 {
    // 프로토콜 요구사항 구현
 }
 */

//*********** 연산 프로퍼티 추가 ***********
extension Int { // Int에 홀수인지 짝수인지 판단하는 extension
    var isEven: Bool{
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return self % 2 == 1
    }
}
print(1.isEven)
print(2.isEven)
print(1.isOdd)
print(2.isOdd)
// 익스텐션으로 연산프로퍼티o, 저장프로퍼티x

//*********** 메서드 추가 ***********
//Int 타입에 여러가지 메서드 추가하기

extension Int{
    func multiply(by n: Int) -> Int{
        return self * n
    }
    
    mutating func multiplySelf(by n: Int){
        self = self.multiply(by: n)
    }
    
    static func isIntTypeInstance(_ instance: Any) -> Bool {
        return instance is Int
    }
}

print(3.multiply(by: 2)) // 6
print(4.multiply(by: 5)) // 20
//---------------------------------------------
var number: Int = 3

number.multiplySelf(by: 2)
print(number) // 6

number.multiplySelf(by: 3)
print(number) // 18
//---------------------------------------------
Int.isIntTypeInstance(number) // true
Int.isIntTypeInstance(3) // true
Int.isIntTypeInstance(3.0) // false
Int.isIntTypeInstance("3") // false

prefix operator++
