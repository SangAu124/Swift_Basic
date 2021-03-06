import UIKit

// 옵셔널 체이닝은 오셔널의 내부의 내부의 내부로 옵셔널이 연결되어 있을때 유용하게 활용할 수 있습니다.
// 매 번 nil 확인을 하지 않고 최종적으로 원하는 값이 있는지 없는지 확인할 수 있습니다.


//예제 코드
class Person{
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String){
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var guard1: Person
    var owner: Person?
    
    init(dong: String, ho: String){
        buildingNumber = dong
        roomNumber = ho
    }
}


//옵셔널 체이닝 사용

let SangAu: Person? = Person(name: "SangAu")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: Person? = Person(name: "superman")

// 옵셔널 체이닝이 실행후 결과값이 nil일 수 있으므로
// 결과 타입도 옵셔널입니다.

// 만약 우리집의 경비원의 직업이 궁금하다면..?

// 옵셔널 체이닝을 사용하지 않는다면
func guardJob(owner: Person?) {
    if let owner = owner {
        if let home = owner.home {
            if let guard1 = home.guard1 {
                if let guardJob = guard1.job {
                    print("우리집 경비원의 직업은 \(guardJob)입니다")
                } else {
                    print("우리집 경비원은 직업이 없어요")
                }
            }
        }
    }
}

guardJob(owner: SangAu)

// 옵셔널 체이닝을 사용한다면
func guardJobWithOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard1?.job {
        print("우리집 경비원의 직업은 \(guardJob)입니다")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}

guardJobWithOptionalChaining(owner: SangAu)


SangAu?.home?.guard1?.job // nil

SangAu?.home = apart

SangAu?.home // Optional(Apartment)
SangAu?.home?.guard1 // nil

SangAu?.home?.guard1 = superman

SangAu?.home?.guard1 // Optional(Person)

SangAu?.home?.guard1?.name // superman
SangAu?.home?.guard1?.job // nil

SangAu?.home?.guard1?.job = "경비원"

//nil 병합 연산자
//중위 연산자 입니다.

Optional ?? Value
 // 옵셔널 값이 nil일 경우, 우측의 값을 반환합니다. 띄어쓰기에 주의하여야 합니다.

var guardJob: String

guardJob = SangAu?.home?.guard1.job ?? "슈퍼맨"
print(guardJob) // 경비원

SangAu?.home?.guard1?.job = nil

guardJob = SangAu?.home?.guard.job ?? "슈퍼맨"
print(guardJob) // 슈퍼맨

