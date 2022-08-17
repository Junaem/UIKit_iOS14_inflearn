import UIKit

//  Function 함수

let a = 10
let b = 5

var c = 0

// _ 인자이름, 이렇게 _를 앞에 붙이면 함수 호출할 때 n: a 이렇게 안쓰고 그냥 a라고 쓸 수 있음
func plus_c(_ n: Int,_ m: Int) -> (Int, String) {
    c = n + m
    return (n + m, "입니다.")
}

print(plus(a, b))
print(c)


func plus(_ n: Int, _ m: Int) -> Int {
    return n + m
}
func minus(_ n: Int, _ m: Int) -> Int {
    return n - m
}
func multiply(_ n: Int, _ m: Int) -> Int {
    return n * m
}

// View, Present, Display - 화면에 보여주는 부분

//someLabel.text = "xxxx" + "원"
//someLabel.textColor = red

//var inputButtonType = "*"


func calc(result: (Int, Int) -> Int) {
    print("연산 결과", result(a, b))
}

for inputButtonType in "+-*" {
    if inputButtonType == "+" {
        calc(result: plus)
    } else if inputButtonType == "-" {
        calc(result: minus)
    } else if inputButtonType == "*" {
        calc(result: multiply)
    }
}






//  Closure 클로져 - lambda와 비슷

// function으로
func myScore(a: Int) -> String {
    return "\(a)점"
}
myScore(a: 30)
// closure로
let myScore2 = { (a: Int) -> String in
    return "\(a)점"
}
myScore2(20)

// 축약
let myScore3 = { (a: Int) -> String in
    "\(a)점" // 한 줄일 때 return 생략
}
let myScore4 = { (a: Int) in
    "\(a)점" // 값이 어차피 String임이 확실하면 type 생략가능
}
let myScore5: (Int, Int) -> String = { a, b in  // 클로져 열기전에 타입 선언해놓으면 뒤에서 타입 생략 가능
    "\(a)\(b)점"
}
let myScore6: (Int, Int) -> String = { return "\($0 + $1)점"} // %0은 처음으로 받는 파라미터
myScore6(1, 20)


// 조건 -> 특정한 글자가 포함된 것을 찾는다.
// 조건 -> 입력한 글자로 시작되는 글자를 찾는다
let names = ["apple", "banana", "air", "brown", "red", "hobby"]

func someFind(find: String) -> [String] {
    var newNames = [String]()
    
    for name in names {
        if name.contains(find) {
            newNames.append(name)
        }
    }
    return newNames
}

let containsSomeText:(String, String) -> Bool = { name, find in
    if name.contains(find) {
        return true
    }
    return false
}
let isStartSomeText: (String, String) -> Bool = { name, find in
    if name.first?.description == find {    // description은 (Char를) String형으로 변환하는 메서드
        return true
    }
    return false
}

func find(findString: String, condition: (String, String) -> Bool) -> [String] {
    var newNames = [String]()
    
    for name in names {
        if condition(name, findString) {
            newNames.append(name)
        }
    }
    return newNames
}

print(someFind(find: "a"))
print(someFind(find: "z"))
print(find(findString: "a", condition: containsSomeText))
print(find(findString: "a", condition: isStartSomeText))

