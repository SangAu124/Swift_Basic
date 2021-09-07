import UIKit

//함수 -> 작업의 가장 작은 단위이자 코드의 집합입니다.

/*
 func 함수명(파라미터 이름: 데이터 타입) -> 반환 타입 {
    return 반환 값
 }
 */

func sum(a: Int, b: Int) -> Int{
    return a + b
}
sum(a: 5, b: 3)

func hello() -> String{
    return "hello"
}
hello()

func printName() {
    
}

func greeting(friend: String, me: String = "SangAu"){
    print("Hello, \(friend)! I'm \(me)")
}
greeting(friend: "Albert")

/*
 func 함수 이름 (전달인다 레이블: 매개변수 이름: 매개변수 타입, 전달인자 레이블: 매개변수 이름: 매개변수 타입...) -> 반환 타입{
    return 반환 값
 }
 */

// 코드의 가독성이 올라간다.
func sendMessage(from myName: String, to name: String) -> String {
    return "Hello \(name)! I'm \(myName)"
}
sendMessage(from: "SangAu", to: "Json")

//와일드 카드 식별자
func sendMessage(_ name: String) -> String {
    return "Hello \(name)"
}
sendMessage("김상은")

//가변 매개변수
func sendMessage(me: String, friend: String...) -> String {
    return "Hello \(friend)! I'm\(me)"
}
sendMessage(me: "SangAu", friend: "Json", "Albert", "Stella")
