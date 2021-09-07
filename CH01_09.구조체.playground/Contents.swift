import UIKit

//  클래스?    구조체?

/*
struct 구조체 이름{
    프로퍼티와 메서드
}
 */

struct User {
    var nickname: String
    var age: Int

    func information() {
        print("\(nickname) \(age)")
    }
}

var user = User(nickname: "SangAu", age: 17)

user.nickname
user.nickname = "Albert"
user.nickname

user.information()

