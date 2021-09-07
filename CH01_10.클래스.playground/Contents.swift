import UIKit

/*
class 클래스 이름 {
    프로퍼티와 메서드
}
*/

class Dog {
    var name: String = ""
    var age: Int = 0
    
    init() {
    }
    
    func introduce() {
        print("name \(name) age \(age)")
    }
}

var dog = Dog()
dog.name = "CoCo"
dog.age = 3
dog.name
dog.age

dog.introduce()
