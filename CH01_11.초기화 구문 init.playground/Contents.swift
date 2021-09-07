import UIKit

//초기화(initialization) -> 클래스 구조체 또는 열거형 인스턴스를 사용하기 위한 준비과정

/*
 init(매개변수: 타입, ...) {
    // 프로퍼티 초기화
    // 인스턴스 생성시 필요한 설정을 해주는 코드 작성
 }
 */

class User {
    var nickname: String
    var age: Int
    
    init(nickname: String, age: Int){
        self.nickname = nickname
        self.age = age
    }
    
    init(age: Int){
        self.nickname = "Albert"
        self.age = age
    }
    
    deinit {
        print("deinit user")
    }
}
var user = User(nickname: "SangAu", age: 17)
user.nickname
user.age

    
var user2 = User(age: 27)
user2.nickname
user2.age

var user3 = User(age: 23)
user3 = nil
