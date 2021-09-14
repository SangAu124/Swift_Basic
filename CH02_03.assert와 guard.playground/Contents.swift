import UIKit

// assert, guard -> 애플리케이션이 동작 도중에 생성하는 다양한 결과값을 동적으로 확인하고 안전하게 처리할 수 있도록 확인하고 빠르게 처리할 수 있습니다.

// assert함수는 디버깅 모드에서만 동작합니다.

var someInt: Int = 0

assert(someInt == 0, "someInt != 0")

someInt = 1
//assert(someInt == 0) // 동작 중지, 검증 실패

func functionWithAssert(age: Int?){
    assert(age != nil, "age == nil")
    
    assert((age! >= 0) && (age! <= 130), "나이 값이 잘못 입력되었습니다.")
    print("당신의 나이는 \(age!)세 입니다.")
}
functionWithAssert(age: 50)
// functionWithAssert(age: -1) // 오류
// functionWithAssert(age: nil) // 오류

//guard -> 잘못된 값의 전달 시 특정 실행 구문을 빠르게 종료합니다.

func functionWithGuard(age: Int?){
    
    guard let unwrappedAge = age, // -> guard문으로 옵셔널 바인딩
          unwrappedAge < 130,
          unwrappedAge > 0 else{
        print("나이값 입력이 잘못되었습니다.")
        return
    }
    print("당신의 나이는 \(unwrappedAge)세 입니다.")
}

var count = 1

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}

//dictionary 받아올때
func someFunction(info: [String: Any]){
    guard let info["name"] as? String else {
        return
    }
    
    guard let info["age"] as? Int, age >= 0 else {
        return
    }
    
    print("\(name) : \(age)")
}
