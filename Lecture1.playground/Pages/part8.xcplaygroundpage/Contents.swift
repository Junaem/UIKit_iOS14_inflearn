import UIKit

// inheritance - 상속

class UserInfo {
    var name = "a"
    var age = 0
    func isAdult() -> Bool {
        age > 19
    }
}

class Guest: UserInfo { // 구현 안 해도 부모 클래스에서 가져오긴 함
    override func isAdult() -> Bool {
        return true
    }
    
    func present() {
        print(name)
        print(super.name)   // 별 차이 없음
        
        print(age)
        
        print(isAdult())
        print(super.isAdult())  // 부모의 isAdult 메서드가 실행됨
    }
    
}

let guest = Guest()
guest.name = "b"
guest.present()



// Generic - 타입 여러가지 사용할 때 <Type>


struct MyStack<SomeType> where SomeType: Equatable { // 제네릭 타입의 종류를 where절로 제한할 수 있음(프로토콜이나 클래스로) ex) Equatable, Numeric, StringProtocol
    var items = [SomeType]()
    
    mutating func push(item: SomeType) {
        items.append(item)
    }
    
    mutating func pop() -> SomeType? {
        if items.isEmpty {
            return nil
        }
        return items.removeLast()
    }
}

var myStack = MyStack<Int>()

myStack.push(item: 4)
myStack.push(item: 5)

myStack.pop()
myStack.pop()
myStack.pop()

var strStack = MyStack<String>()
strStack.push(item: "hi")
strStack.pop()

