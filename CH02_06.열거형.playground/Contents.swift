import UIKit

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
