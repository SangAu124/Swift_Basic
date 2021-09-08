import UIKit

//상속 -> 부모가 자식에게 재산을 물려주는 행위

// 부모 클래스(슈포클래스) -> 상속하는 클래스
// 자식 클래스(서브클래스) -> 상속받는 클래스

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour "
    }
    func makeNoise() {
        print("speaker on")
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed
bicycle.currentSpeed = 15.0
bicycle.currentSpeed

class Train: Vehicle{
    override func makeNoise() {
        super.makeNoise()
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()

class Car: Vehicle{
    var gear = 1
    override var description: String{
        return super.description + "in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)

class AutomaticCar: Car{
    override var currentSpeed: Double{
        didSet {
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")

 // final -> final키워드를 붙이면 재정의(오버라이딩)할 수 없다.
