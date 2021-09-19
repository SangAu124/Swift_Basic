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

enum Dinner {
    case pizza
    case rice
    case kimbab
}

let meal: Dinner = Dinner.kimbab
print(meal)
