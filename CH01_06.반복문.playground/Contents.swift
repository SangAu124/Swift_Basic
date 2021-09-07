import UIKit

//반복문 -> 반복적으로 코드가 실행되게 만드는 구문을 말한다.

//for-in

/*
 for 루프상수 in 순회대상 {
    // 실행할 구문..
 }
 */
for i in 1...4 {
    print(i)
}

let array = [1, 2, 3, 4, 5]

for i in array{
    print(i)
}

//while

/*
 while 조건식 {
    // 실행할 구문
 }
 */

var number = 5
while number < 10 {
    number += 1
}
number

//repeat-while (do-while)

/*
 repeat {
    // 실행할 수문
 } while 조건식
 */

var x = 6
repeat{
    x += 2
} while x < 5
    print(x)

