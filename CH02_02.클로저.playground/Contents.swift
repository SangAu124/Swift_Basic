import UIKit

// 익명 함수(클로저)

/* 기본 문법
 { (매개 변수들) -> 반환 타입 in
    실행 코드
 }
 */

//******** 기본 클로저 ********
var names: [String] = ["wiplan", "jenny", "yagom", "eric"]


func backwards(first: String, second: String) -> Bool{
    return first > second
}

let reversed: [String] = names.sorted(by: backwards)
print(reversed) // ["yagom", "wiplan", "jenny", "eric"]

// 클로저를 이요하여 간결하게 표현하기
//backwards(first:second:) 함수 대신에 sorted(by:) 메서드의 전달인자로 클로저를 직접 전달합니다.
let reversed1: [String] = names.sorted(by: { (first: String, second: String) -> Bool in
    return first > second
})
print(reversed1) // ["yagom", "wiplan", "jenny", "eric"]

// sorted(by:) 메서드로 전달하는 메소드 시그니처가 backwards(first:second:)함수와 같다.

//******** 후행 클로저 ********

// 후행 클로저의 사용
let reversed2: [String] = names.sorted() { (first: String, second: String) -> Bool in
    return first > second
}

// sorted(by:) 메소드의 소괄호까지 생략 가능합니다.
let reversed3: [String] = names.sorted { (first: String, second: String) -> Bool in
    return first > second
}


//******** 클로저 표현 간소화 ********

// 클로저의 타입 유추
//클로저의 매개변수 타입과 반환 타입을 생략하여 표현할 수 있습니다.
let reversed4: [String] = names.sorted { (first, second) in
    return first > second
}

// 단축 인자 이름 사용
//단축 인자 이름을 사용한 표현
//단축인자 -> 첫번째 전달인자부터 $0 $1 $2 $3 ...
let reversed5: [String] = names.sorted {
    return $0 > $1
}

//암시적 표현의 사용
let reversed6: [String] = names.sorted { $0 > $1 }

// 클로저로서의 연산자 함수 사용
//연산자 함수를 클로저의 역할로 사용
let reversed7: [String] = names.sorted(by: >)


//******** 값 획득 ********

func makeIncrementer(forIncrement amount: Int) -> (() -> Int) {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

// makeIncrementer 함수의 반환 타입은 () -> Int입니다. => 함수 객체를 반환

var a = makeIncrementer(forIncrement: 1)
a()
a()

let incrementByTwo: (() -> Int) = makeIncrementer(forIncrement: 2)

let first: Int = incrementByTwo() // 2
let second: Int = incrementByTwo() // 4
let third: Int = incrementByTwo() // 6

//******** 클로저는 참조 타입 ********

// 위 예제를 보았듯이 클로저는 상수인 incrementByTwo는 상수이지만 클로저는 값 획득을 통해 runningTotal 변수를 계속해서 증가시킬 수 있습니다. because 클로저는 참조 타입이기 때문입니다.

//  두 상수는 같은 클로저를 참조하기 때문에 동일한 클로저가 동작한다.
let incrementByOne: (() -> Int) = makeIncrementer(forIncrement: 2)
let sameWithIncrementByOne: (() -> Int) = incrementByOne

let first1: Int = incrementByOne()              // 2
let second2: Int = sameWithIncrementByOne()     // 4

//******** 탈출 클로저 ********


