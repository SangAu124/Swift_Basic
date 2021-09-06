import UIKit

//컬렉션 타입 = 데이터들의 집합 묶음

//Array
//데이터 타입의 값들을 순서대로 저장하는 리스트

//Dictionary
//순서없이 키(key)와 값(Value)한 쌍으로 데이터를 저장하는 컬렉션 타입

//Set
//같은 데이터 타입의 값을 순서없이 저장하는 리스트

//Array
var numbers: Array<Int> = Array<Int>()
//var numbers: [Int] = [] // 위 코드와 정확히 동일한 수행을 하는 코드이다.
numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[0]
numbers[1]

numbers.insert(4, at: 2)
numbers

numbers.remove(at: 0)
numbers


//Dictionary
//var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic: [String: Int] = ["김상은": 1]
dic["임동현"] = 3
dic["김민지"] = 5

dic["김민지"] = 6
dic

dic.removeValue(forKey: "김민지")
dic


//Set
var set: Set = Set<Int>() // 축약형이 없음
set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set.insert(30)
set

set.remove(20)
set
