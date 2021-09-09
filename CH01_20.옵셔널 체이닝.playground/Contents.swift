import UIKit

// 옵셔널 체이닝 -> 옵셔널에 속해 있는 nil 일지도 모르는 프로퍼티, 메서드, 서브스크립션 등을 가져오거나 호출할 때 사용할 수 있는 일련의 과정

struct Developer{
    let name: String
}

struct Company {
    let name: String
    var developer: Developer?
}

var developer = Developer(name: "kim")
var company = Company(name: "SangAu", developer: developer)
print(company.developer)
print(company.developer?.name) // ?로 옵셔널 체이닝일 하면 값이 옵셔널에 랩핑 되어있고
print(company.developer!.name) // !로 옵셔널 체이닝을 하면 값이 언랩핑 되어있다.
