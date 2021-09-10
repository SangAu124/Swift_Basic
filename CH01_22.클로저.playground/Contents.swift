import UIKit

//클로저 -> 코드에서 전달 및 사용할 수 있는 독립 기능 블록이며, 일급 객체의 역할을 할 수 있음 ( 익명함수 )
//일급객체 -> 전달 인자로 보낼 수 있고, 변수/상수 등으로 저장하거나 전달할 수있으며 함수의 반환 값이 될 수도 있다.

/*
{ (매개 변수) -> 리턴 타입 in
    실행 구문
}
*/

let hello = { () -> () in
    print("hello")
}

hello()

let hello2 = { (name: String) -> String in
    return "Hello, \(name)"
}

// hello2(name: "SangAu") -> error 클로저에서 전달인자 레이블을 적으면 오류가 난다.
hello2("SangAu")

func doSomthing(closure: () -> ()){
    closure()
}

doSomthing(closure: { () -> () in
    print("hello")
})
//위 코드를 축약하면
doSomthing() {
    print("Hello2")
}
//매개변수가 하나면 소괄호도 안써도댐
doSomthing {
    print("Hello2")
}

func doSomthing2() -> () -> () {
    return { () -> () in
        print("Hello4")
    }
}

doSomthing2()()


func doSomething2(success: () -> (), fail: () -> ()){
    
}
doSomething2 {
    <#code#>
} fail: {
    <#code#>
}

func doSomthing3(closure: (Int, Int, Int) -> Int){
    closure(1, 2, 3)
}

doSomthing3(closure: { (a, b, c) in
    return a + b + c
})

doSomthing3(closure: { // 파라미터의 데이터 타입 생략가능
    return $0 + $1 + $2
})

doSomthing3(closure: { // return문만 있을시 리턴 생략 가능
    $0 + $1 + $2
})

doSomthing3() {
    $0 + $1 + $2
}

doSomthing3{ // 하나의 클로저만 매개변수ㅗ 전달하면 ()도 생략가능
    $0 + $1 + $2
}
