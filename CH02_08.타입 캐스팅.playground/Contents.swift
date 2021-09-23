import UIKit

//스위프트의 타입캐스팅은 인스턴스의 타입을 확인하거나 자신을 다른 타입의 인스턴스인양 행세할 수 있는 방법으로 사용할 수 있습니다.

//is와 as -> 타입을 확인 하거나, 전환 할 수 있습니다.


// 상속 받는거
class Coffee{
    let name: String
    let shot: Int
    
    var description: String{
        return "\(shot) shot(s) \(name)"
    }
    
    init(shot: Int){
        self.shot = shot
        self.name = "coffee"
    }
}

class Latte: Coffee{
    var flavor: String
    
    override var description: String{
        return "\(shot) shot(s) \(flavor) latte"
    }
    init(flavor: String, shot: Int){
        self.flavor = flavor
        super.init(shot: shot)
    }
}

class Americano: Coffee {
    let iced: Bool
    
    override var description: String{
        return "\(shot) shot(s) \(iced ? "iced" : "hot") americano"
    }
    
    init(shot: Int, iced: Bool){
        self.iced = iced
        super.init(shot: shot)
    }
}

//데이터 타입 확인

let coffee: Coffee = Coffee(shot: 1)
print(coffee.description) //1 shot(s) coffee

let mycoffee: Americano = Americano(shot: 2, iced: false)
print(mycoffee.description) // 2 shot(s) hot americano

let yourCoffee: Latte = Latte(flavor: "Green tea", shot: 3)
print(yourCoffee.description) // 3 shot(s) green tea latte

print(coffee is Coffee) // true
print(coffee is Americano) // false
print(coffee is Latte) // false

print(mycoffee is Coffee) // true
print(yourCoffee is Coffee) // true

print(mycoffee is Latte) // false
print(yourCoffee is Latte) // true

