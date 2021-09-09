import UIKit

//프로토콜 -> 특정 역활을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진

/*
 protocol 이름 {
    
 }
 */

protocol SomeProtocol{
}

protocol SomeProtocol2{
}

struct SomeStructure: SomeProtocol, SomeProtocol2{	// SomwProtocol 채택, 동시 채택 가능
}

/*
class Someclass: SomeSuperClass, FirstProtocol, AnotherProtocol{ // 상속받을 슈퍼 클래스를 맨앞에
}
*/

// 프로퍼티 요구사항
protocol FirstProtocol{
    var name: Int { get set }
    var age: Int { get }
}

protocol AnotherProtocol { // 프로토콜에서 타입 프로퍼티를 요구하려면 static이 있어야함
    static var someTypeProtocol: Int { get set }
}

protocol FullyNames{
    var fullName: String { get set }
    func printFullName()
}

struct Person: FullyNames {
    var fullName: String
    func printFullName() {
        print(fullName)
    }
}

protocol SomeProtocol3{
    func someTypeMethod()
}

protocol SomeProtocol4{
    init(someParameter: Int)
}
protocol SomeProtocol5 {
    init()
}

class SomeClass: SomeProtocol5{ // 클래스에서 생성자 요구사항을 준수하려면 required를 사용해야한다.
    required init() {
        
    }
}
