import UIKit

// 에러 처리 -> 프로그램 내에서 에러가 발생한 상황에 대해 대응하고 이를 복구하는 과정

//Swift 에러 처리
// - 발생(throwing)
// - 감지(catching)
// - 전파(propagating)
// - 조작(manipulating)

enum PhoneError: Error{
    case unknown
    case batteyLow(batteryLevel: Int)
}

// throw PhoneError.batteyLow(batteryLevel: 20)

//오류를 처리하는 4가지 방법
//1. 함수에서 발생한 오류를 해당 함수를 호출한 코드에 전파하기

func checkPhoneBatteryStatus(battetryLevel: Int) throws  -> String{
    guard battetryLevel != -1 else {throw PhoneError.unknown}
    guard battetryLevel >= 20 else {throw PhoneError.batteyLow(batteryLevel: 20)}
    return "배터리 상태가 정상입니다."
}

//2. do-catch를 이용하여 오류 처리

/*
 do {
    try 오류 발생 가능코드
 } catch 오류 패턴 {
    처리 코드
 }
 */

do {
    try checkPhoneBatteryStatus(battetryLevel: 20)
}catch PhoneError.unknown{
    print("알 수 없는 애러 입니다.")
}catch PhoneError.batteyLow(let batteryLevel) {
    print("배터리 전원 부족 남은 배터리 : \(batteryLevel)%")
} catch {
    print("그 외 오류 발생 : \(error)")
}

//3. 옵셔널값으로 오류 처리

let status = try? checkPhoneBatteryStatus(battetryLevel: 30)
print(status)

//4. 오류가 아닐꺼라고 확신하는 방법

let status2 = try? checkPhoneBatteryStatus(battetryLevel: 30)
print(status2)
