import UIKit

//프로퍼티 -> 클래스, 구조체 또는 열거형 등에 관련된 값을 뜻한다.

//1. 저장 프로퍼티

struct Dog { // 벨류타입
    var name: String
    let gender: String
}

var dog = Dog(name: "SangAu", gender: "Male")
print(dog)

dog.name = "김상은"

let dog2 = Dog(name: "SangAu", gender: "male") // 내부 프로퍼티도 상수화된다


class Cat{ // 참조타입
    var name: String
    let gender: String
    
    init(name: String, gender: String){
        self.name = name
        self.gender = gender
    }
}

let cat = Cat(name: "Json", gender: "male")
cat.name = "SangAu"
print(cat.name)




//2. 연산 프로퍼티

struct Stock{
    var averagePrice: Int
    var quantity: Int
    var purchasePrice: Int { // set을 지우고 get만 사용하면 읽기전용 연상 프로퍼티가 될 수 있다.
        get{
            return averagePrice * quantity
        }
        set{
            averagePrice = newValue / quantity
        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice
stock.purchasePrice = 3000
stock.averagePrice

//프로퍼티 옵저버 -> 프로퍼티의 값의 변화를 관찰하고 반응한다
// 프로퍼티가 set될때 호출된다

// 프로퍼티 옵저버는 3가지 경우에만 사용할 수 있다.

//1. 저장프로퍼티
//2. 오버라이딩된 저장 께산 프로퍼티
//에서만 사용가능하다

class Accont {
    var credit: Int = 0{
        // 소괄호 이름 지정
        willSet { // 값이 저장되기 직전
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        
        didSet { // 값이 저장되고난 직후
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Accont()
account.credit = 1000


//3. 타입 프로퍼티

struct SomeStructure {
    static var storedTypeProperty = "Some value." // 스토어
    static var computedProperty: Int { // 컴퓨디 드
        return 1
    }
}

SomeStructure.computedProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "Hello"
SomeStructure.storedTypeProperty

// 인스턴스를 생성하지 않고 프로퍼티를 사용할 수 있다.
