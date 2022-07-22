import UIKit
import Darwin

// 변수 상수

var str: String = "Hello, playground"
var myAge = 10
myAge = 20

var screenHeight: Float = 560
var sum = myAge + Int(screenHeight)

//Swift 특징
//Safe type 강타입, 타입이 엄격

// 상수
let guestName = "john"

// Bool
var isOpen: Bool = false

if isOpen {
    print("open")
} else {
    print("not open")
}


// Tuple (n짝, n쌍)
var topTitle = ("메인화면", "mainIcon.png", 330)
print(topTitle.1)
let httpError = (statusCode: 404, descrption: "Not found")

httpError.statusCode



// Optional (옵셔널)
// 개념 : 값이 있을 수도, 없을 수도 있다.
var age1: Int? = 0

if age1 == nil { // 0이 아니라 nil인지 확인
    // alert - 나이 입력해주세요
}

var myName: String? = "" // 빈 스트링

if myName == nil {
    
}
// 옵셔널은 그냥 사용할 수 없는 경우도 많음

var opt1: Int? = 10
var opt2: Int? = 20

// coalesce - 값이 없으면 ?? 뒤의 값으로 대체
var opt_result1 = (opt1 ?? 0) + (opt2 ?? 0)

// force unwrap - 무조건 값이 있다고 가정. 없을 경우 에러
//var opt_result2 = opt1! + opt2!

if opt1 != nil{
    print(opt1) // 옵셔널 객체 자체를 프린트
    print(opt1!)
}

if let hasNumber = opt1 {
    print(hasNumber) // hasNumber로 값을 받아서 프린트
}

func testFunc() {
    guard let hasNumber = opt1 else {
        return
    }
    print("testFunc start")
    print(hasNumber)
    print("end")
}

testFunc()

// Operators
// Swift언어 특징 : 타입에 엄격,
var a: Int = 20
let b: Double = 30

// 연산을 위해서는 타입을 맞춰줘야 함
let c = a + Int(b)

let aa = "hi"
let bb = " hello"
let cc = aa + bb

if b.truncatingRemainder(dividingBy: 2) == 1 {
    print("홀수")
} else {
    print("짝수")
}

a += 2
a -= 2

"\u{61}" == "a" // 유니코드
"a" < "b"

// unicode 범위
let inputValue = "d"

"\u{39}" == "9"

if inputValue >= "\u{30}" && inputValue <= "\u{39}" {
    print("숫자다")
} else if inputValue >= "\u{41}" && inputValue <= "\u{7a}" {
    print("영어다")
}


