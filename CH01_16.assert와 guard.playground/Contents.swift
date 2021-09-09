import UIKit

//assert
// - 특정 조건을 체크하고, 조건이 성립되지 않으면 메세지를 출력하게 할 수 있는 함수
// - assert함수는 디버깅 모드에서만 동작하고 주로 디버깅 중 조건의 검증을 위하여 사용합니다.

var value = 0
assert(value == 0)

value = 2
assert(value == 0, "값이 0이 아닙니다.") // error

//guard 문
// - 뭔가를 검사하여 그 다음에 오는 코드를 실행할지 말지 결정 하는 것
// - guard 문에 주어진 조건문이 거짓일 떄 구문이 실행됨

/*
 guard 조건 else {
    // 조건이 false 이면 else 구문이 실행되고
    return or throw or break 를 통해 이 후 코드를 실행하지 않도록 한다.
 }
 */

func guardTest(value: Int){
    guard value == 0 else { return }
    print("안녕하세요")
}

guardTest(value: 0)

//guard 문으로 옵셔널 바인딩하기
func guardTest1(value1: Int?){
    guard value1 == value1 else { return }
    print(value1)
}
guardTest1(value1: 2)
guardTest1(value1: nil) // nil값이 들어가서 guard 문에 막힘
 
