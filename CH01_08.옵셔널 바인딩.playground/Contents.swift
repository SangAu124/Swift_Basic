import UIKit

//옵셔널 해제 방법 = 2가지
//1. 명시적 해제 -> 강제 해제, 비강제 해제(옵셔널 바인딩)

//강제 옵셔널 해제
var number: Int? = 3
print(number)
print(number!) // 강제 -> 위험!

//비강제 옵셔널 바인딩
if let result = number { // if문 안에서만 사용할 수 있다.
    print(result)
}else {
    
}

func test() { // 가드문 다음 함수 전체에서 추출된 변수를 사용할 수 있다.
    let number: Int? = 5
    guard let result = number else { return }
    print(result)
}
test()


//2. 묵시적 해제 -> 컴파일러에 의한 자동 해제, 옵셔널의 묵시적 해제

//비교연산자를 사용하면   컴파일러가 자동 해제
let value: Int? = 6
if value == 6 {
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다.")
}

// 묵시젖ㄱ 해제
let string = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1)
