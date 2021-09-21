import UIKit


// - enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의합니다
// - 각 case는 소문자 카멜케이스로 정의합니다
// - 각 case는 그 자체가 고유의 값입니다
// - 각 케이스는 한 줄에 개별로도, 한 줄에 여러개도 정의할 수 있습니다

// 열거형은 enum 키워드를 사용합니다.

/*
 enum 열거형이름 {
    case 종류?
    case 종류?
    .
    .
    .
 }
 */

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

// 열거형 타입과 케이스를 모두 사용하여도 됩니다
var day: Weekday = Weekday.mon

// 타입이 명확하다면 .케이스 처럼 표현해도 무방합니다
day = .tue

print(day) // tue

// switch의 비교값에 열거형 타입이 위치할 때
// 모든 열거형 케이스를 포함한다면
// default를 작성할 필요가 없습니다
switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다")
case Weekday.fri:
    print("불금 파티!!")
case .sat, .sun:
    print("신나는 주말!!")
}
// 평일입니다

